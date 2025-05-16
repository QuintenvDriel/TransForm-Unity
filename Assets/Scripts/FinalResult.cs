using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class FinalResult : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI resultText;
    [SerializeField] private Image characterImage;

    [Header("Character Spriter")]
    [SerializeField] private Sprite happySprite;
    [SerializeField] private Sprite neutralSprite;
    [SerializeField] private Sprite sadSprite;

    private void Start()
    {
        int score = GameManager.instance.GetScore();

        if (score >= 3)
        {
            resultText.text = "Heel goed gedaan jij bent echt een topper!";
            characterImage.sprite = happySprite;
        }
        else if (score >= 0)
        {
            resultText.text = "Het ging oke, maar dit kan echt nog beter.";
            characterImage.sprite = neutralSprite;
        }
        else
        {
            resultText.text = "Dit was echt baggerslecht, jij moet echt nog ff oefenen!";
            characterImage.sprite = sadSprite;
        }
    }
}
