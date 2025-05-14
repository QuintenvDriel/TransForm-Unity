using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TabelInterfaceManager : MonoBehaviour
{
    public GameObject uitlegScherm;
    public Button sluitKnop;

    private bool isUitlegGetoond = false;

    private void Start()
    {
        if(!GameManager.instance.isInstructieGetoond)
        {
            uitlegScherm.SetActive(true);

            //Update GameManager
            GameManager.instance.isInstructieGetoond = true;
        }
        else
        {
            uitlegScherm.SetActive(false);
        }

        sluitKnop.onClick.AddListener(CloseUitlegScherm);
    }

    //private void Start()
    //{
    //    if (!isUitlegGetoond)
    //    {
    //        uitlegScherm.SetActive(true);
    //
    //        isUitlegGetoond=true;
    //    }
    //    else
    //    {
    //        uitlegScherm.SetActive(false);
    //    }
    //
    //    sluitKnop.onClick.AddListener(CloseUitlegScherm);
    //}

    void CloseUitlegScherm()
    {
        uitlegScherm.SetActive(false);
    }
}
