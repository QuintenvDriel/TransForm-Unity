using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MusicManager : MonoBehaviour
{
    private static MusicManager instance;

    private void Awake()
    {
        //Controlleer of er al een MusicManager bestaat
        if (instance != null)
        {
            Destroy(gameObject);
            return;
        }

        //Behoud de manager tijdens scene wissels
        instance = this;
        DontDestroyOnLoad(gameObject);

        //Verwijder als per ongeluk meerdere managers in een scene geinstaleerd worden
        if (FindObjectsOfType<MusicManager>().Length > 1)
        {
            Destroy(gameObject);
        }
    }
}
