using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class SceneTransition : MonoBehaviour
{

    public Image fadeImage;
    public float fadeDuration = 1f;
    public bool enableFade = true;

    public void LoadScene(string sceneName)
    {
        if (enableFade)
        {
            //Met fade
            StartCoroutine(FadeOutAndLoadScene(sceneName));
        }
        else
        {
            //Zonder fade
            SceneManager.LoadScene(sceneName);
        }
    }
   // public void StartGame()
    //{
    //    StartCoroutine(FadeOutAndLoadScene("HomeScene"));
    //}

    private IEnumerator FadeOutAndLoadScene(string sceneName)
    {
        fadeImage.color = new Color(0, 0, 0, 0);
        fadeImage.gameObject.SetActive(true);

        //Fading naar zwart
        float timeElapsed = 0f;
        while (timeElapsed < fadeDuration)
        {
            timeElapsed += Time.deltaTime;
            fadeImage.color = new Color(0, 0, 0, Mathf.Clamp01(timeElapsed / fadeDuration));
            yield return null;
        }

        // Laad de nieuwe scéne en wacht tot deze volledig is geladen
        AsyncOperation asyncload = SceneManager.LoadSceneAsync(sceneName);

        while (!asyncload.isDone)
        {
            yield return null;
        }

        //Wacht zodat het fade effect goed te zien is
        timeElapsed = 0f;
        while (timeElapsed < fadeDuration)
        {
            timeElapsed += Time.deltaTime;
            fadeImage.color = new Color(0, 0, 0, Mathf.Clamp01(timeElapsed / fadeDuration));
            yield return null;
        }
    }

}

