using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StopMusicAndPlayNew : MonoBehaviour
{
    public AudioSource lastSceneMusic;

    private void Start()
    {
        //Stop oude muziek in de MusicManager
        GameObject mm = GameObject.FindWithTag("MusicManager");
        if (mm != null)
        {
            mm.GetComponent<AudioSource>().Stop();
        }

        //Speel de nieuwe muziek af
        if (lastSceneMusic != null)
        {
            lastSceneMusic.Play();
        }
    }
}
