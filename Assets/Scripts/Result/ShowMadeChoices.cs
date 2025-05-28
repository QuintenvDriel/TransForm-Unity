using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class ShowMadeChoices : MonoBehaviour
{
    [SerializeField] private GameObject feedbackPanel;
    [SerializeField] private GameObject buttonPrefab;
    [SerializeField] private Transform buttonContainer;

    public void ShowFeedback()
    {
        //Haal de keuzes op uit de GameManager
        List<string> choices = GameManager.instance.GetPlayerChoices();

        //Verwijder eerder gegenereerde elementen
        foreach (Transform child in buttonContainer)
        {
            Destroy(child.gameObject);
        }

        //Controleer of er keuzes zijn om te tonen
        if (choices.Count == 0)
        {
            Debug.Log("Je hebt geen keuzes gemaakt.");
            return;
        }
        
        //Maak een element voor elke gemaakte keuze
        foreach (string choice in choices)
        {
            //Maak een nieuw element
            GameObject newButton = Instantiate(buttonPrefab, buttonContainer);

            //Haal de tekst op uit het element en voeg de juiste tekst toe
            TextMeshProUGUI buttonText = newButton.GetComponentInChildren<TextMeshProUGUI>();
            buttonText.text = choice;
        }

        // Maak het feedbackPanel zichtbaar
        feedbackPanel.SetActive(true);
    }

    public void CloseFeedbackPanel()
    {
        // Verberg het feedbackPanel
        feedbackPanel.SetActive(false);
    }
}
