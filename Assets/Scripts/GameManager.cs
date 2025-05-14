using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    //De gegevens die bewaart moeten worden tussen scenes
    public bool[] instrumentStatus;
    public bool isInstructieGetoond;

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

        //Initieren van gegevens
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
}
