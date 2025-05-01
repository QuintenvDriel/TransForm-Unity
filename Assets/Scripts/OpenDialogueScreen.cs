using UnityEngine;

public class OpenDialogueScreen : MonoBehaviour
{
    public GameObject dialogueScreen;

    public void OpenDialogue()
    {
        if (dialogueScreen != null)
        {
            dialogueScreen.SetActive(true);
            Debug.Log("Dialoogscherm geopend.");
        }
        else
        {
            Debug.LogWarning("Geen scherm gekoppeld aan OpenDialogueScreen!");
        }
    }
}
