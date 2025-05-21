using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

public class DialogueManager : MonoBehaviour
{

    [Header("Dialogue UI")]

    [SerializeField] private GameObject dialoguePanel;

    [SerializeField] private TextMeshProUGUI dialogueText;

    [SerializeField] private TextMeshProUGUI displayNameText;

    [SerializeField] private TextMeshProUGUI feedbackText;

    [SerializeField] private Animator CharacterAnimator;

    [SerializeField] private Animator LayoutAnimator;

    [SerializeField] private GameObject nextButton;

    [SerializeField] private string endSceneName = "FirstScene";

    [Header("Choices UI")]

    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;

    private Story currentStory;

    public bool dialogueIsPlaying { get; private set; }

    private static DialogueManager instance;

    private const string SPEAKER_TAG = "speaker";

    private const string EMOTION_TAG = "emotion";

    private const string FEEDBACK_TAG = "feedback";

    private const string LAYOUT_TAG = "layout";

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Er is meer dan één dialoogmanager in de scène gevonden");
        }
        // Retourneer de huidige instantie van de DialogueManager
        instance = this;
    }

    public static DialogueManager GetInstance()
    { 
        return instance;
    }

    private void Start()
    {
        dialogueIsPlaying
            = false;
        dialoguePanel.SetActive(false);

        //Haal alle tekst van de keuzes op.
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }
    }

    private void Update()
    {
        //Stuur direct terug als het dialoog niet aan het afspelen is.
        if (!dialogueIsPlaying)
        {
            return;

            // Geen keuzes zichtbaar = verhaal gaat verder met klik
            bool awaitingChoice = currentStory.currentChoices.Count > 0;

            if (!awaitingChoice && Input.GetKeyDown(KeyCode.Space))
            {
                ContinueStory();
            }
        }


    }

    public void EnterDialogueMode(TextAsset inkJSON)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);

        feedbackText.text = "";
        feedbackText.gameObject.SetActive(false);

        // Als er dialoog verdergaat, toon dan de eerste zin
        if (currentStory.canContinue)
        {
            ContinueStory();
            
        }
        else
        {
            ExitDialogueMode();
        }
    }

    // Verwerk de keuzes van de speler en toon ze
    private void DisplayChoices()
    {
        // Haal de huidige keuzes op
        List<Choice> currentChoices = currentStory.currentChoices;

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("Er zijn meer keuzes gegeven dan de UI kan ondersteunen. Aantal gegeven keuzes:"
                + currentChoices.Count);
        }

        int index = 0;
        // Toon de keuzes en stel de tekst van de keuzes in
        foreach (Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }
        // Verberg de resterende keuzes die niet zichtbaar zijn
        for (int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }
        
        StartCoroutine(SelectFirstChoice());
        
    }
    private IEnumerator SelectFirstChoice()
    {
        // Zorg ervoor dat er geen geselecteerd object is
        EventSystem.current.SetSelectedGameObject(null);

        yield return new WaitForEndOfFrame();

        // Selecteer de eerste keuze
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject);
    }

    // Verwerk de keuze van de speler
    public void MakeChoice(int choiceIndex)
    {
        // Kies de geselecteerde keuze
        currentStory.ChooseChoiceIndex(choiceIndex);
        // Ga verder met het verhaal na de keuze
        ContinueStory();
    }

    // Verlaat de dialoogmodus en laad de eindscene
    private void ExitDialogueMode()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";

        // Ga naar een andere scene
        if (!string.IsNullOrEmpty(endSceneName))
        {
            SceneManager.LoadScene(endSceneName);
        }
        else
        {
            Debug.LogWarning("Geen eindscene opgegeven in de DialogueManager");
        }

        //Ophalen van score uit het ink bestand en sla deze op in de GameManger
        if (currentStory.variablesState["score"] is int inkScoreInt)
        {
            GameManager.instance.totalScore = inkScoreInt;
            Debug.Log("Eindscore uit Ink: " + inkScoreInt);
        }
        else
        {
            Debug.LogWarning("Ink-score is niet gevonden of geen integer.");
        }
    }

    public void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            feedbackText.text = "";
            feedbackText.gameObject.SetActive(false);

            string nextLine = currentStory.Continue();
            dialogueText.text = nextLine;

            HandleTags(currentStory.currentTags);

            //Verberg keuzes zolang we nog verder kunnen lezen
            foreach (GameObject choice in choices)
            {
                choice.SetActive(false);
            }

            nextButton.SetActive(true);
        }
        else if (currentStory.currentChoices.Count > 0)
        {
            DisplayChoices();
            nextButton.SetActive(false);
        }
        else
        {
            ExitDialogueMode();
        }
        
    }
    private void HandleTags(List<string> currentTags)
    {
        //Loop door elke tag en behandel deze.
        foreach (string tag in currentTags)
        {
            //Parse de tags
            string[] splitTag = tag.Split(':');
            if(splitTag.Length != 2)
            {
                Debug.LogError("Tag kon niet correct worden geparsed" + tag);
            }
            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim();

            //Handle de tags
            switch (tagKey)
            {
                case SPEAKER_TAG:
                    displayNameText.text = tagValue;
                    break;
                case EMOTION_TAG:
                    CharacterAnimator.Play(tagValue);
                    break;
                default:
                    Debug.LogWarning("Tag is binnengekomen maar wordt momenteel niet verwerkt" + tag);
                    break;
                case LAYOUT_TAG:
                    LayoutAnimator.Play(tagValue); 
                    break;
                case FEEDBACK_TAG:
                    feedbackText.text = tagValue;
                    feedbackText.gameObject.SetActive(true);
                    break;
                case "score":
                    if (int.TryParse(tagValue, out int scoreChange))
                    {
                        GameManager.instance.AddToScore(scoreChange);
                        Debug.Log($"Score is bijgewerkt: {GameManager.instance.GetScore()}");
                    }
                    else
                    {
                        Debug.LogWarning("Kon score-tag niet omzetten naar getal:" + tagValue);
                    }
                    break;
            }
        }
    }

}
