using UnityEngine;
using System.Collections.Generic;

public class PanelManager : MonoBehaviour
{
    [System.Serializable]
    public struct NamedPanel
    {
        public string name;
        public GameObject panel;
    }

    [Header("Alle schermen die beheerd worden")]
    public List<NamedPanel> panels;

    private Dictionary<string, GameObject> panelDict;

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
        foreach (var kvp in panelDict)
        {
            kvp.Value.SetActive(false);
        }

        if (panelDict.ContainsKey(panelName))
        {
            panelDict[panelName].SetActive(true);
            Debug.Log($"Panel '{panelName}' geactiveerd.");
        }
        else
        {
            Debug.LogWarning($"Panel '{panelName}' niet gevonden in PanelManager.");
        }
    }
}
