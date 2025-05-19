using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TabelInteraction : MonoBehaviour
{
    public Button[] smallButtons;
    public AudioClip smallButtonClickSound;
    public GameObject[] largeButtons;
    public AudioClip largeButtonClickSound;
    private AudioSource audioSource;


    private void Start()
    {
        audioSource = GetComponent<AudioSource>();

        for (int i = 0; i < largeButtons.Length; i++)
        {
            if (GameManager.instance.instrumentStatus[i])
            {
                smallButtons[i].interactable = false;
                largeButtons[i].SetActive(true);
            }
            else
            {
                smallButtons[i].interactable = true;
                largeButtons[i].SetActive(false);
            }
        }
    }

        public void SmallButtonClick(int index)
        {
            smallButtons[index].interactable = false;
            largeButtons[index].SetActive(true);

        //Speel geluid
        audioSource.PlayOneShot(smallButtonClickSound);

        //Update de GameManager
        GameManager.instance.SetInstrumentStatus(index, true);
        }

        public void LargeButtonClick(int index)
        {
            largeButtons[index].SetActive(false);
            smallButtons[index].interactable = true;

            //Speel geluid
            audioSource.PlayOneShot(largeButtonClickSound);

            //Update de GameManager
            GameManager.instance.SetInstrumentStatus(index, false);
    }
}
