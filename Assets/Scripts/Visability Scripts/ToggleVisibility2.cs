using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleVisibility2 : MonoBehaviour
{
    public PanelManager panelManager;
    public GameObject[] elementsToHide;
    public GameObject[] elemenstToShow;

    public void CloseAllPanels()
    {
        panelManager.CloseAllPanels();

        foreach (GameObject obj in elementsToHide) obj.SetActive(false);
        foreach (GameObject obj in elemenstToShow) obj.SetActive(true);
    }
}
