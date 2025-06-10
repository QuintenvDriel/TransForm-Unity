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

        if (score >= 6)
        {
            resultText.text = "Dank je wel voor de manier waarop je met me bent omgegaan vandaag. Ik voelde me gezien en gerespecteerd, alsof ik gewoon patiënt kon zijn, zonder extra uitleg te hoeven geven over wie ik ben. Je stelde duidelijke vragen, luisterde oprecht en ging professioneel met alles om. Dit soort consulten geven me vertrouwen in de zorg. Ik kom graag nog een keertje bij u terug!";
            characterImage.sprite = happySprite;
        }
        else if (score >= 2)
        {
            resultText.text = "Ik vond het gesprek op zich oké, maar er waren wel momenten waarop ik me niet helemaal zeker voelde over hoe je me benaderde. Sommige dingen voelde wat onwennig of onduidelijk. Ik weet dat het lastig kan zijn, en ik waardeer je inzet, maar het zou helpen als je nog wat meer aandacht hebt voor hoe je vragen stelt of ruimte laat voor mijn perspectief.";
            characterImage.sprite = neutralSprite;
        }
        else
        {
            resultText.text = "Om eerlijk te zijn voelde dit consult ongemakkelijk voor mij. Er werd weinig rekening gehouden met mijn situatie als transgender persoon, en sommige opmerkingen of vragen kwamen niet goed over. Ik had het gevoel dat ik mezelf moest verdedigen of extra moest uitleggen. Ik hoop dat je wilt blijven leren, want hoe je met iemand praat kan echt het verschil maken in of iemand zich veilig voelt bij je. Volgende keer ga ik liever naar iemand anders voor dit onderzoek.";
            characterImage.sprite = sadSprite;
        }
    }
}
