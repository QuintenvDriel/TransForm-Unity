using Ink.Parsed;
using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

public class ToggleVisibility2 : MonoBehaviour
{
    public PanelManager panelManager;

    [Header("Altijd tonen")]
    public GameObject[] defaultElements;

    [Header("Altijd verbergen")]
    public GameObject[] alwaysHideElements;

    [Header("Tonen bij de juiste instrumenten")]
    public int[] requiredInstruments;
    public GameObject[] correctInstruments;

    [Header("Tonen bij foute instrumenten")]
    public int[] WrongInstruments;
    public GameObject[] incorrectInstruments;

    [Header("Tonen bij geen instrumenten")]
    public GameObject[] NoInstruments;

    public void CloseAllPanels()
    {
        panelManager.CloseAllPanels();

        //Stap 1: Toon altijd zichtbare elementen
        foreach (GameObject obj in defaultElements)
            if (obj != null)
            obj.SetActive(true);

        //Stap 2: Verberg alle objecten die verborgen moeten worden
        foreach (GameObject obj in alwaysHideElements)
        {
            if (obj != null)
                obj.SetActive(false);
        }

        //Stap 3: Check de instrumentstatus
        bool[] instrumentenStatus = GameManager.instance.instrumentStatus;
        bool anyPicked = false;
        bool correctPicked = false;
        bool incorrectPicked = false;

        //Stap 4: Check of er iets is klaargelegd
        for (int i = 0; i < instrumentenStatus.Length; i++)
        {
            if (instrumentenStatus[i])
            {
                anyPicked = true;

                //Check of de gepakte instrumenten de juiste zijn
                if (System.Array.Exists(requiredInstruments, idx => idx == i))
                {
                    correctPicked = true;
                }
                else
                {
                    incorrectPicked = true;
                }
            }
                
        }

        //Stap 5: Toon afhankelijk van de status
        if (!anyPicked)
        {
            foreach (GameObject obj in NoInstruments)
                if (obj != null)
                obj.SetActive(true);
        }
        else if (correctPicked && !incorrectPicked)
        {
            foreach (GameObject obj in correctInstruments)
                if (obj != null)
                obj.SetActive(true);
        }
        else
        {
            foreach (GameObject obj in incorrectInstruments)
                if (obj != null)
                obj.SetActive(true);
        }

    }
}
