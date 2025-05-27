using UnityEngine;

public class OpenUIScreen : MonoBehaviour
{
    [Tooltip("Het scherm (panel) dat geactiveerd moet worden")]
    public GameObject screenToOpen;

    [Tooltip("Optioneel geluid dat wordt afgespeeld als het scherm opent")]
    public AudioSource openSound;

    public void OpenScreen()
    {
        if (openSound != null)
        {
            openSound.Play();
        }

        if (screenToOpen != null)
        {
            screenToOpen.SetActive(true);
            Debug.Log("Scherm geopend: " + screenToOpen.name);
        }
        else
        {
            Debug.LogWarning("Geen scherm gekoppeld aan OpenUIScreen.");
        }
    }
}
