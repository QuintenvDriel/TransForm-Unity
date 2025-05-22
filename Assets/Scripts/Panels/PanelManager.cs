using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PanelManager : MonoBehaviour
{
    [System.Serializable]
    public struct NamedPanel
    {
        public string name;
        public GameObject panel;
        public AudioSource openSound;
        public AudioSource closeSound;
    }

    [Header("Alle schermen die beheerd worden")]
    public List<NamedPanel> panels;

    private Dictionary<string, GameObject> panelDict;
    private Stack<GameObject> panelStack = new Stack<GameObject>();

    void Awake()
    {
        panelDict = new Dictionary<string, GameObject>();

        foreach (var p in panels)
        {
            if (p.panel != null && !panelDict.ContainsKey(p.name))
            {
                panelDict.Add(p.name, p.panel);
            }
        }
    }

    public void ShowPanel(string panelName)
    {
        if (!panelDict.ContainsKey(panelName))
        {
            Debug.LogWarning($"Panel '{panelName}' niet gevonden in PanelManager.");
            return;
        }

        if (panelStack.Count > 0)
        {
            panelStack.Peek().SetActive(false);
        }

        GameObject newPanel = panelDict[panelName];
        newPanel.SetActive(true);
        panelStack.Push(newPanel);

        NamedPanel panelData = panels.Find(p => p.name == panelName);
        if (panelData.openSound != null)
        {
            panelData.openSound.Play();
        }

        //To-Do list updates
        switch (panelName)
        {
            case "DossierScreen":
                GameManager.instance.dossierOpened = true;
                break;
            case "OpenMailScreen":
                GameManager.instance.emailOpened = true;
                break;
            case "Tafel":
                GameManager.instance.instrumentenTafelOpened = true;
                break;
        }
    }

    public void GoBack()
    {
        if (panelStack.Count <= 1)
        {
            Debug.Log("Geen eerder panel beschikbaar om naar terug te gaan.");
            return;
        }

        GameObject currentPanel = panelStack.Pop();
        currentPanel.SetActive(false);

        GameObject previousPanel = panelStack.Peek();
        previousPanel.SetActive(true);
    }

    public void CloseAllPanels()
    {
        StartCoroutine(CloseAllPanelsWithSound());
    }

    private IEnumerator CloseAllPanelsWithSound()
    {
        foreach (var panelData in panels)
        {
            if (panelData.panel.activeSelf)
            {
                if (panelData.closeSound != null)
                {
                    panelData.closeSound.Play();
                    yield return new WaitForSeconds(panelData.closeSound.clip.length);
                }

                panelData.panel.SetActive(false);
            }
        }

        panelStack.Clear();
    }
}
