using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    //De gegevens die bewaart moeten worden tussen scenes
    public bool[] instrumentStatus;
    public bool isInstructieGetoond;
    public bool isButtonToggled = false;
    public bool cameFromStartScene = false;
    public int totalScore = 0;

    //Gegevens voor de ToDoList
    public bool dossierOpened = false;
    public bool emailOpened = false;
    public bool instrumentenTafelOpened = false;

    private void Awake()
    {
        //Controlleer of er maar 1 instantie is van de GameManager
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

        //Initieren van instrumentstatus
        if (instrumentStatus == null)
        {
            instrumentStatus = new bool[9];
        }
    }

    public void SetInstrumentStatus(int index, bool status)
    {
        instrumentStatus[index] = status;
    }

    public void SetInstructieGetoond(bool status)
    {
        isInstructieGetoond = status;
    }

    public void AddToScore(int value)
    {
        totalScore += value;
        Debug.Log("Nieuwe score: " + totalScore); //check of het werkt.
    }

    public int GetScore()
    {
        return totalScore;
    }

    public bool isFirstTaskComplete()
    {
        return dossierOpened && emailOpened;
    }

    public bool isSecondTaskComplete()
    {
        return instrumentenTafelOpened;
    }
   
    public void ResetGame ()
    {
        // Reset alle gegevens
        isInstructieGetoond = false;
        isButtonToggled = false;
        cameFromStartScene= true;

        dossierOpened = false;
        emailOpened = false;
        instrumentenTafelOpened = false;

        totalScore = 0;

        //Reset de array van de instrumenten status
        if (instrumentStatus == null || instrumentStatus.Length != 9) 
        {
            instrumentStatus = new bool[9];
        }
        else
        {
            for (int i = 0; i < instrumentStatus.Length; i++)
            {
                instrumentStatus[i] = false;
            }
        }
    }

}
