using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ToggleVisibility : MonoBehaviour
{
    public GameObject[] elementsToHide;
    public GameObject[] elementsToShow;
    public Button toggleButton;

    private bool isToggled = false;

    private void Start()
    {
        //laad de status van de knop vanuit de GameManager
        isToggled = GameManager.instance.isButtonToggled;

        //Pas de zichtbaarheid van de elementen aan
        SetElementVisibility(isToggled);

        //Voeg de functie toe aan de knop
        toggleButton.onClick.AddListener(ToggleElementsVisibility);
    }

    void ToggleElementsVisibility()
    {
        //Wissel de status van de knop
        isToggled = !isToggled;

        //Sla status op in de Gamemanager
        GameManager.instance.isButtonToggled = isToggled;

        // Pas de zichtbaarheid van de elementen aan
        SetElementVisibility(isToggled);
    }

    void SetElementVisibility(bool status)
    {

        //Verberg de elementen die moeten verdwijnen 
        foreach (var element in elementsToHide) 
        {
            element.SetActive(!status);
        }

        //Toon elementen die moeten verschijnen
        foreach(var element in elementsToShow)
        {
            element.SetActive(status);
        }
    }
}
