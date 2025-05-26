using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PreviousScene : MonoBehaviour
{
    public void GoBackToPreviousScene()
    {
        string previousScene = PlayerPrefs.GetString("PreviousScene", "HomeScene");
        SceneManager.LoadScene(previousScene);

    }

    public void SetPreviousScene()
    {
        PlayerPrefs.SetString("PreviousScene", SceneManager.GetActiveScene().name);
        PlayerPrefs.Save();
    }
}
