using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using System.Collections.Generic;
using TMPro;

public class InkUIManager : MonoBehaviour
{
    public TextAsset inkJSONAsset;
    public TextMeshProUGUI dialogueText;
    public Button[] choiceButtons;

    private Story story;

    void Start()
    {
        story = new Story(inkJSONAsset.text);
        RefreshView();
    }

    void RefreshView()
    {
        if (story.canContinue)
        {
            dialogueText.text = story.Continue().Trim();
        }

        List<Choice> choices = story.currentChoices;

        for (int i = 0; i < choiceButtons.Length; i++)
        {
            if (i < choices.Count)
            {
                choiceButtons[i].gameObject.SetActive(true);
                choiceButtons[i].GetComponentInChildren<TextMeshProUGUI>().text = choices[i].text.Trim();

                // Captured index fix
                int capturedIndex = i;
                choiceButtons[i].onClick.RemoveAllListeners();
                choiceButtons[i].onClick.AddListener(() => OnClickChoiceButton(capturedIndex));
            }
            else
            {
                choiceButtons[i].gameObject.SetActive(false);
            }
        }

        if (choices.Count == 0 && !story.canContinue)
        {
            dialogueText.text += "\n\nEindscore: " + story.variablesState["score"];
        }

        Debug.Log("Huidige score: " + story.variablesState["score"]);
    }

    void OnClickChoiceButton(int choiceIndex)
    {
        // Haal eerst tekst op uit huidige keuze
        if (story.currentChoices.Count > choiceIndex)
        {
            string gekozenTekst = story.currentChoices[choiceIndex].text;
            Debug.Log("Gekozen knop: " + choiceIndex + " - " + gekozenTekst);

            // Kies de keuze en verfris het verhaal
            story.ChooseChoiceIndex(choiceIndex);
            RefreshView();
        }
        else
        {
            Debug.LogWarning("Keuze index ongeldig of verlopen.");
        }
    }
}
