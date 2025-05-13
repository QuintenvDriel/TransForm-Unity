using UnityEngine;
using System.Collections;

public class CloseUIScreen : MonoBehaviour
{
    [Tooltip("Het scherm (panel) dat gesloten moet worden")]
    public GameObject screenToClose;

    [Tooltip("Optioneel geluid dat wordt afgespeeld bij sluiten")]
    public AudioSource closeSound;

    public void CloseScreen()
    {
        if (closeSound != null)
        {
            closeSound.Play();
            StartCoroutine(DelayedClose());
        }
        else
        {
            Debug.LogWarning("Geen sluitgeluid gekoppeld.");
            screenToClose.SetActive(false); // Als geen geluid, sluit meteen
        }
    }

    private IEnumerator DelayedClose()
    {
        yield return new WaitForSeconds(closeSound.clip.length);
        screenToClose.SetActive(false);
        Debug.Log("Scherm gesloten na geluid.");
    }
}
