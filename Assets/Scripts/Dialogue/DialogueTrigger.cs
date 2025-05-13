using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    public void TriggerDialogue()
    {
        if (inkJSON != null)
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
        }
        else
        {
            Debug.LogWarning("Geen Ink JSON gekoppeld aan DialogueTrigger!");
        }
    }
}
