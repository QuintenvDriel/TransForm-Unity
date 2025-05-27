using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstructionScreenManager : MonoBehaviour
{
    public GameObject instructionScreen;
    public GameObject closeButton;

    
    void Start()
    {
        //Check of de speler vanaf de startscene komt
        if (GameManager.instance.cameFromStartScene)
        {
            //Toon het instructiescherm
            instructionScreen.SetActive(true);
        }
        else
        {
            //Verberg het instructiescherm als je niet van de startscene komt
            instructionScreen.SetActive(false);
        }

        closeButton.GetComponent<UnityEngine.UI.Button>().onClick.AddListener(CloseInstructionScreen);
    }

   void CloseInstructionScreen()
    {
        instructionScreen.SetActive(false);

        GameManager.instance.cameFromStartScene = false;
    }
}
