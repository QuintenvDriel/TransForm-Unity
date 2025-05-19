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

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Found more than one Dialogue Manager in the scene");
        }
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

        //get all of the choices text
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
        //return right away if dialogue isn't playing
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

        if (currentStory.canContinue)
        {
            ContinueStory();
            
        }
        else
        {
            ExitDialogueMode();
        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices were given than the UI can support. Number of choices given:"
                + currentChoices.Count);
        }

        int index = 0;
        //enable and initialize the choices upt ot the amount of choices for this line of dialogue
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }
        //go through the remaining choices the UI supports and make sure they're hidden
        for (int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }
        
        StartCoroutine(SelectFirstChoice());
        
    }
    private IEnumerator SelectFirstChoice()
    {
        //event system requires we clear it first, then wait
        //for at least one frame before we set the current selected object.
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject);
    }

    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
        ContinueStory();
    }


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
        //SceneManager.LoadScene("Room1Scene");

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
        //else { 

        //if (currentStory.canContinue)
        //{
        //    dialogueText.text = currentStory.Continue();
        //    DisplayChoices();

            //Handle tags
        //    HandleTags(currentStory.currentTags);
        //}
        //else
        //{
        //    ExitDialogueMode();
        //}
        //}
    }
    private void HandleTags(List<string> currentTags)
    {
        //Loop through each tag and handle it accordingly
        foreach (string tag in currentTags)
        {
            //Parse the tag
            string[] splitTag = tag.Split(':');
            if(splitTag.Length != 2)
            {
                Debug.LogError("Tag could not be appropriately parsed:" + tag);
            }
            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim();

            //Handle the tag
            switch (tagKey)
            {
                case SPEAKER_TAG:
                    displayNameText.text = tagValue;
                    break;
                case EMOTION_TAG:
                    CharacterAnimator.Play(tagValue);
                    break;
                default:
                    Debug.LogWarning("Tag came in but is not curently being handled" + tag);
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
