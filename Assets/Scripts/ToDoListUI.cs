using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ToDoListUI : MonoBehaviour
{
    [Header("Eerste taak (Dossier + Email)")]
    public Image checkbox1;
    public Sprite checkOn;
    public Sprite checkOff;
    public TMP_Text label1;

    [Header("Tweede taak (Behandelkamer voorbereiden)")]
    public Image checkbox2;
    public TMP_Text label2;

    void Start()
    {
        label1.text = "Lees je in over de volgende patiënt\n" +
              "- Check je E-mail\n" +
              "- Check het patiëntendossier";

        label2.text = "Maak de behandelkamer klaar voor het onderzoek";

        checkbox1.sprite = checkOn;
        checkbox2.sprite = checkOn;
    }

    private void Update()
    {
        bool dossier = GameManager.instance.dossierOpened;
        bool email = GameManager.instance.emailOpened;

        bool firstDone = GameManager.instance.isFirstTaskComplete();
        bool secondDone = GameManager.instance.isSecondTaskComplete();

        checkbox1.sprite = firstDone ? checkOn : checkOff;
        checkbox2.sprite = secondDone ? checkOn : checkOff;
    }
}
