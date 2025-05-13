using UnityEngine;
using Ink.Runtime;

public class InkTest : MonoBehaviour
{
    public TextAsset inkJSONAsset;
    private Story story;

    void Start()
    {
        story = new Story(inkJSONAsset.text);
        RunStory();
    }

    void RunStory()
    {
        while (story.canContinue)
        {
            Debug.Log(story.Continue());
        }

        if (story.currentChoices.Count > 0)
        {
            for (int i = 0; i < story.currentChoices.Count; i++)
            {
                Debug.Log($"Keuze {i}: {story.currentChoices[i].text}");
            }

            // Simuleer het kiezen van de eerste keuze (index 0)
            story.ChooseChoiceIndex(0);
            RunStory();
        }
        else
        {
            Debug.Log("Einde van het verhaal.");
            Debug.Log("Eindscore: " + story.variablesState["score"]);
        }
    }
}
