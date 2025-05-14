using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TabelInteraction : MonoBehaviour
{
    public Button[] smallButtons;
    public GameObject[] largeButtons;


    private void Start()
    {
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






    //    private void Start()
    //    {
    //        foreach (GameObject largeButtons in largeButtons)
    //        {
    //            largeButtons.SetActive(false);
    //        }
    //    }


        public void SmallButtonClick(int index)
        {
            smallButtons[index].interactable = false;
            largeButtons[index].SetActive(true);

        //Update de GameManager
        GameManager.instance.SetInstrumentStatus(index, true);
        }

        public void LargeButtonClick(int index)
        {
            largeButtons[index].SetActive(false);
            smallButtons[index].interactable = true;

            //Update de GameManager
            GameManager.instance.SetInstrumentStatus(index, false);
    }
}
