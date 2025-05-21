VAR score = 0
#emotion:Noa_neutral

Oke wat wilt u dat ik doe? #speaker:Noa

* [U mag even plaatsnemen op de stoel, dan zal ik eerst een paar zaken met u doornemen.] -> Positief
* [Kleedt u zich maar van onder uit. Daarna mag u op het bed gaan liggen.] -> Negatief
* [Gaat u maar op de stoel zitten.] -> Neutraal


=== Positief ===
#emotion:Noa_happy
U mag even plaatsnemen op de stoel, dan zal ik eerst een paar zaken met u doornemen. #speaker:Speler #layout:Right #feedback:Je nam de tijd om eerst rustig uitleg te geven, nog vóór je met het onderzoek begon. Dat stelt de patiënt gerust, zeker als die zich wat gespannen voelt. Veel mensen, vooral bij intieme onderzoeken, hebben behoefte aan duidelijke uitleg en het gevoel dat ze niet worden opgejaagd. Door rust en ruimte te bieden, toon je respect én vergroot je het vertrouwen.

Oh, fijn dat u de tijd neemt om alles rustig aan mij uit te leggen. Ik vind het allemaal wat spannend, dus wat extra uitleg zou prettig zijn. #speaker:Noa #layout:Left #feedback:Je nam de tijd om eerst rustig uitleg te geven, nog vóór je met het onderzoek begon. Dat stelt de patiënt gerust, zeker als die zich wat gespannen voelt. Veel mensen, vooral bij intieme onderzoeken, hebben behoefte aan duidelijke uitleg en het gevoel dat ze niet worden opgejaagd. Door rust en ruimte te bieden, toon je respect én vergroot je het vertrouwen.

~ score = score + 1
-> Next
=== Negatief ===
#emotion:Noa_nervous
Kleedt u zich maar van onder uit. Daarna mag u op het bed gaan liggen. #speaker:Speler #layout:Right #feedback:Je vroeg de patiënt zich uit te kleden zonder eerst uit te leggen wat je ging doen. Zeker bij intieme onderzoeken is het belangrijk dat patiënten eerst weten wat er gaat gebeuren. Neem daarom altijd even de tijd om rustig uit te leggen hoe het onderzoek verloopt en wat de patiënt kan verwachten. Dat geeft rust, duidelijkheid en een gevoel van controle.

Gaat u mij niet eerst uitleggen wat u allemaal gaat doen? Dat zou ik wel prettig vinden. #speaker:Noa #layout:Left #feedback:Je vroeg de patiënt zich uit te kleden zonder eerst uit te leggen wat je ging doen. Zeker bij intieme onderzoeken is het belangrijk dat patiënten eerst weten wat er gaat gebeuren. Neem daarom altijd even de tijd om rustig uit te leggen hoe het onderzoek verloopt en wat de patiënt kan verwachten. Dat geeft rust, duidelijkheid en een gevoel van controle.

Als u dat wilt, kan ik dat zeker even doen. Gaat u maar op de stoel zitten, dan leg ik u even wat dingen uit. #speaker:Speler #layout:Right

~ score = score - 1
->Next
=== Neutraal ===
#emotion:Noa_neutral

Gaat u maar op de stoel zitten. #speaker:Speler #layout:Right #feedback:‘Gaat u maar zitten op de stoel’ is duidelijk, maar kan wat direct of autoritair overkomen, zeker als je geen oogcontact maakt of weinig context geeft. Probeer een iets warmere, uitnodigende formulering, zoals; ‘U mag hier plaatsnemen op de stoel.’

Oh, oké. Is goed. #speaker:Noa #layout:Left #feedback:‘Gaat u maar zitten op de stoel’ is duidelijk, maar kan wat direct of autoritair overkomen, zeker als je geen oogcontact maakt of weinig context geeft. Probeer een iets warmere, uitnodigende formulering, zoals; ‘U mag hier plaatsnemen op de stoel.’

~ score = score + 0
->Next

=== Next ===
Vervolg het gesprek met de patiënt #speaker:--- 
*[Leg alle stappen rustig één voor één uit en neem de tijd voor de patiënt.] -> Keuze1
*[Ik neem aan dat u al weet wat er gaat gebeuren?] -> Keuze2
*[Laat u het mij weten als u vragen heeft of iets nodig heeft?] -> Keuze3
*[Voor we beginnen, zijn er zaken waar ik rekening mee moet houden?] -> Keuze4


=== Keuze1 ===
#emotion:Noa_happy
Ik zal alle stappen die we zo meteen gaan doorlopen even rustig met u doornemen. #speaker:Speler #layout:Right #feedback:Je nam de tijd om alles rustig en duidelijk uit te leggen, stap voor stap. Dit helpt de patiënt om zich veilig en serieus genomen te voelen, vooral bij een onderzoek dat lichamelijk en emotioneel kwetsbaar kan zijn. Veel patiënten ervaren spanning of onzekerheid, zeker bij intieme onderzoeken. Door vooraf duidelijk uit te leggen wat er gaat gebeuren, neem je die spanning weg en bouw je vertrouwen op.

Wat fijn dat u alles stap voor stap uitlegt. Zo krijg ik een veel beter beeld van de procedure, en dat stelt me gerust. #speaker:Noa #layout:Left #feedback:Je nam de tijd om alles rustig en duidelijk uit te leggen, stap voor stap. Dit helpt de patiënt om zich veilig en serieus genomen te voelen, vooral bij een onderzoek dat lichamelijk en emotioneel kwetsbaar kan zijn. Veel patiënten ervaren spanning of onzekerheid, zeker bij intieme onderzoeken. Door vooraf duidelijk uit te leggen wat er gaat gebeuren, neem je die spanning weg en bouw je vertrouwen op.

~ score = score + 1
-> Next2
=== Keuze2 ===
#emotion:Noa_uncomfortable
Ik neem aan dat u al weet wat er gaat gebeuren en dat ik dus niks hoef uit te leggen. #speaker:Speler #layout:Right #feedback:Je ging ervan uit dat de patiënt al wist wat er ging gebeuren. Dat kan onbedoeld zorgen voor onzekerheid of het gevoel dat de patiënt ‘achterloopt’. Leg altijd kort en rustig uit wat je gaat doen, ook als je denkt dat de patiënt het al weet. Dit is niet alleen professioneel, maar ook een belangrijk onderdeel van veilige en respectvolle zorg. Niet elke patiënt durft te zeggen dat die iets niet begrijpt of is vergeten.

Nee, dat weet ik niet! Had ik dat wel moeten weten dan? #speaker:Noa #layout:Left #feedback:Je ging ervan uit dat de patiënt al wist wat er ging gebeuren. Dat kan onbedoeld zorgen voor onzekerheid of het gevoel dat de patiënt ‘achterloopt’. Leg altijd kort en rustig uit wat je gaat doen, ook als je denkt dat de patiënt het al weet. Dit is niet alleen professioneel, maar ook een belangrijk onderdeel van veilige en respectvolle zorg. Niet elke patiënt durft te zeggen dat die iets niet begrijpt of is vergeten.

Nee, dat hoeft niet, maar ik dacht dat u zich misschien al had ingelezen. #speaker:Speler #layout:Right

~ score = score - 1
-> Next2
=== Keuze3 ===
#emotion:Noa_happy
Laat u het mij weten als u vragen heeft of iets nodig heeft? #speaker:Speler #layout:Right #feedback:Goed dat je vroeg of de patiënt nog iets nodig had. In dit geval gaf de patiënt aan gespannen te zijn en vroeg om extra uitleg. Door te luisteren en stap voor stap te begeleiden, kun je veel spanning wegnemen. Niet iedere patiënt durft te zeggen dat hij of zij gespannen is. Blijf dus altijd alert op non-verbale signalen, zoals stilte, een gespannen houding of ontwijkende blikken. Stel gerust nog een extra vraag of check expliciet; 'Zal ik u uitleggen wat ik precies ga doen?

Ik ben eerlijk gezegd een beetje gespannen, dus als u alles stap voor stap zou kunnen uitleggen, zou dat heel fijn zijn. #speaker:Noa #layout:Left #feedback:Goed dat je vroeg of de patiënt nog iets nodig had. In dit geval gaf de patiënt aan gespannen te zijn en vroeg om extra uitleg. Door te luisteren en stap voor stap te begeleiden, kun je veel spanning wegnemen. Niet iedere patiënt durft te zeggen dat hij of zij gespannen is. Blijf dus altijd alert op non-verbale signalen, zoals stilte, een gespannen houding of ontwijkende blikken. Stel gerust nog een extra vraag of check expliciet; 'Zal ik u uitleggen wat ik precies ga doen?

Geen enkel probleem, we gaan alles even rustig doornemen. #speaker:Speler #layout:Right

~ score = score + 1
-> Next2
=== Keuze4 ===
#emotion:Noa_neutral
Voor we beginnen, zijn er zaken waar ik rekening mee moet houden? #speaker:Speler #layout:Right #feedback:Goed dat je vroeg of er iets is waar je rekening mee moet houden. Dat geeft de patiënt ruimte om gevoelens of voorkeuren te delen, zoals in dit geval; dat het onderzoek gevoelig ligt en dat rust belangrijk is. Niet elke patiënt zal dit zó duidelijk zeggen. Veel mensen, en zeker transgenderpersonen, durven hun spanning of ongemak niet uit te spreken, bijvoorbeeld uit schaamte, eerdere negatieve ervaringen of angst om ‘moeilijk’ te zijn.

Uhm... ja, ik ben een trans man en vind dit onderzoek best lastig. Het voelt confronterend, dus ik zou het fijn vinden als u rustig aan doet. #speaker:Noa #layout:Left #feedback:Goed dat je vroeg of er iets is waar je rekening mee moet houden. Dat geeft de patiënt ruimte om gevoelens of voorkeuren te delen, zoals in dit geval; dat het onderzoek gevoelig ligt en dat rust belangrijk is. Niet elke patiënt zal dit zó duidelijk zeggen. Veel mensen, en zeker transgenderpersonen, durven hun spanning of ongemak niet uit te spreken, bijvoorbeeld uit schaamte, eerdere negatieve ervaringen of angst om ‘moeilijk’ te zijn.

Oké, goed dat u het aangeeft. Ik zal hier uiteraard rekening mee houden. #speaker:Speler #layout:Right

~ score = score + 1
-> Extra

===  Extra ===
Je hebt nog niet veel ervaring met transgenderpatiënten. Meld je dit nu aan de patiënt? #speaker:---

* [Ja] -> Extra2
* [Nee] -> Next2
=== Extra2 ===
#emotion:Noa_neutral
Wilt u het aangeven als ik iets verkeerd zeg of verkeerd begrijp? Ik maak ook fouten, maar ik wil graag van u leren en u zo goed mogelijk helpen. #speaker:Speler #layout:Right #feedback:Sterke houding! Je toonde openheid én gaf de patiënt ruimte om te corrigeren als iets niet goed voelt. Dat is een fijne manier om vertrouwen op te bouwen, vooral in situaties waarin iemand zich kwetsbaar kan voelen. Niet elke patiënt heeft de moed of energie om fouten of ongemak aan te kaarten, zelfs als je erom vraagt. Blijf dus alert op subtiele signalen, zoals stil worden, een gesloten lichaamshouding of vermijdend oogcontact.

Oké, ik vind het fijn dat u hier eerlijk over bent. Ik zal er goed op letten. #speaker:Noa #layout:Left #feedback:Sterke houding! Je toonde openheid én gaf de patiënt ruimte om te corrigeren als iets niet goed voelt. Dat is een fijne manier om vertrouwen op te bouwen, vooral in situaties waarin iemand zich kwetsbaar kan voelen. Niet elke patiënt heeft de moed of energie om fouten of ongemak aan te kaarten, zelfs als je erom vraagt. Blijf dus alert op subtiele signalen, zoals stil worden, een gesloten lichaamshouding of vermijdend oogcontact.

Fijn dat u er zo in staat. Ik zal u nu uitleggen wat ik zo meteen allemaal ga doen en hoe het in zijn werk gaat. #speaker:Speler #layout:Right

~ score = score + 0
-> Next2

=== Next2 ===
Vervolg het gesprek met de patiënt #speaker:---
* [Is er, voor we beginnen, nog iets dat ik kan doen om het u zo comfortabel mogelijk te maken?] -> Keuze5
* [Voelt het nog gek voor u om hier als trans man te zitten?] -> Keuze6
* [Wat was uw naam voor uw transitie?] -> Keuze7
* [Zullen we maar gewoon beginnen?] -> Keuze8
* [Hoe voelt het voor u om hier te zijn?] -> Keuze9

=== Keuze5 ===
#emotion:Noa_happy
Is er, voor we beginnen, nog iets dat ik kan doen om het u zo comfortabel mogelijk te maken? #speaker:Speler #layout:Right #feedback:Uitstekende aanpak. Je gaf de patiënt regie over het proces door te vragen wat zij nodig hebben om zich comfortabel te voelen. Dit is een krachtig voorbeeld van patiëntgerichte zorg. Veel transgender personen ervaren spanning of controleverlies bij intieme onderzoeken. Door expliciet ruimte te geven voor wensen of grenzen, help je hen zich veiliger te voelen.

Ja, fijn dat u het vraagt. Als u bij iedere stap zou willen vertellen wat u gaat doen, zou ik dat heel prettig vinden. #speaker:Noa #layout:Left #feedback:Uitstekende aanpak. Je gaf de patiënt regie over het proces door te vragen wat zij nodig hebben om zich comfortabel te voelen. Dit is een krachtig voorbeeld van patiëntgerichte zorg. Veel transgender personen ervaren spanning of controleverlies bij intieme onderzoeken. Door expliciet ruimte te geven voor wensen of grenzen, help je hen zich veiliger te voelen.

Dat is geen enkel probleem, ik ga dat voor u doen! #speaker:Speler #layout:Right

~ score = score + 1
-> Next3
=== Keuze6 ===
#emotion:Noa_uncomfortable
Voelt het nog gek voor u om hier als trans man te zitten? #speaker:Speler #layout:Right #feedback:Let op; goedbedoeld, maar onnodig persoonlijk. Je probeerde interesse of betrokkenheid te tonen, en dat is begrijpelijk. Maar door te vragen hoe het ‘voelt’ om als trans man op dat moment daar te zijn, maak je het gesprek persoonlijker dan nodig is binnen een medische context. Voor sommige transgender personen kan dit overkomen als nieuwsgierigheid, of als een reminder dat ze ‘anders’ zijn, terwijl ze juist normale, veilige zorg willen ontvangen. Richt je op de zorgtaak.

Ik snap dat u interesse wilt tonen, maar ik begrijp niet wat dit verder toevoegt aan het onderzoek. Daarom wil ik het hier liever niet over hebben, nu. #speaker:Noa #layout:Left #feedback:Let op; goedbedoeld, maar onnodig persoonlijk. Je probeerde interesse of betrokkenheid te tonen, en dat is begrijpelijk. Maar door te vragen hoe het ‘voelt’ om als trans man op dat moment daar te zijn, maak je het gesprek persoonlijker dan nodig is binnen een medische context. Voor sommige transgender personen kan dit overkomen als nieuwsgierigheid, of als een reminder dat ze ‘anders’ zijn, terwijl ze juist normale, veilige zorg willen ontvangen. Richt je op de zorgtaak.

Oh, excuus. Het was niet mijn bedoeling om u ongemakkelijk te maken. #speaker:Speler #layout:Right

~ score = score -1
-> Onderzoek
=== Keuze7===
#emotion:Noa_angry
Wat was uw naam voor uw transitie? #speaker:Speler #layout:Right #feedback:Ongepaste en niet-medisch relevante vraag. Vragen naar iemands naam vóór hun transitie, ook wel de ‘deadname’ genoemd, worden over het algemeen als kwetsend, ongepast of zelfs respectloos ervaren. Deze informatie is vrijwel nooit nodig voor goede zorg. Het stellen van zo'n vraag kan het vertrouwen van de patiënt ernstig beschadigen, ook al is het niet kwaad bedoeld. Houd vragen functioneel en relevant.

Dat is geen informatie die ik nu met u wil delen! #speaker:Noa #layout:Left #feedback:Ongepaste en niet-medisch relevante vraag. Vragen naar iemands naam vóór hun transitie, ook wel de ‘deadname’ genoemd, worden over het algemeen als kwetsend, ongepast of zelfs respectloos ervaren. Deze informatie is vrijwel nooit nodig voor goede zorg. Het stellen van zo'n vraag kan het vertrouwen van de patiënt ernstig beschadigen, ook al is het niet kwaad bedoeld. Houd vragen functioneel en relevant.

Oh, oké, sorry. Laten we verdergaan. #speaker:Speler #layout:Right

~ score = score - 1
-> Onderzoek
=== Keuze8 ===
#emotion:Noa_nervous
Zullen we maar gewoon beginnen? #speaker:Speler #layout:Right #feedback:Let op je toon en tempo. Je gaf het signaal om te starten, maar de formulering ‘Zullen we maar gewoon beginnen?’ klinkt gehaast en onpersoonlijk. Bij een gevoelig onderzoek, zeker voor transgender personen, is het belangrijk om bewust rust, aandacht en regie over te brengen. De reactie van de patiënt klinkt meewerkend, maar ook gespannen. Door het tempo en de toon zorgvuldiger te kiezen, kun je de ervaring veiliger en menselijker maken.

Ja, is goed... laten we maar snel doorgaan, inderdaad. #speaker:Noa #layout:Left #feedback:Let op je toon en tempo. Je gaf het signaal om te starten, maar de formulering ‘Zullen we maar gewoon beginnen?’ klinkt gehaast en onpersoonlijk. Bij een gevoelig onderzoek, zeker voor transgender personen, is het belangrijk om bewust rust, aandacht en regie over te brengen. De reactie van de patiënt klinkt meewerkend, maar ook gespannen. Door het tempo en de toon zorgvuldiger te kiezen, kun je de ervaring veiliger en menselijker maken.

-> Next3
=== Keuze9 ===
#emotion:Noa_neutral
Hoe voelt het voor u om hier te zijn? #speaker:Speler #layout:Right #feedback:Goede, empathische benadering. Door te vragen hoe het voor de patiënt voelt om hier te zijn, geef je ruimte voor emoties en laat je zien dat je openstaat voor hun ervaring. Dat kan helpen om spanning bespreekbaar te maken, vooral bij intieme of beladen onderzoeken. Let er wel op dat de vraag niet te los van de zorgsituatie komt te staan. Koppel het, als het kan, aan het doel; meer comfort en vertrouwen tijdens het onderzoek.

Het is wel een beetje ongemakkelijk, maar ik vind het fijn dat ik serieus genomen word. #speaker:Noa #layout:Left #feedback:Goede, empathische benadering. Door te vragen hoe het voor de patiënt voelt om hier te zijn, geef je ruimte voor emoties en laat je zien dat je openstaat voor hun ervaring. Dat kan helpen om spanning bespreekbaar te maken, vooral bij intieme of beladen onderzoeken. Let er wel op dat de vraag niet te los van de zorgsituatie komt te staan. Koppel het, als het kan, aan het doel; meer comfort en vertrouwen tijdens het onderzoek.

Ik zie dat dit veel met u doet. Als er iets is wat ik voor u kan doen, hoor ik dat graag. #speaker:Speler. #layout:Right 

~ score = score + 1
-> Next3

=== Next3 ===
VAR onderzoek_gedaan = false
Voordat je verder gaat, kun je nog even met de patiënt praten, of je kunt jezelf alvast klaarmaken voor het onderzoek. #speaker:--- 

* {onderzoek_gedaan == false} [Vervolg het gesprek.] ->Vervolg
* [Start met het onderzoek.] -> Onderzoek

=== Vervolg ===
Vervolg het gesprek met de patiënt. #speaker:---
*[Is dit de eerste keer dat u voor dit onderzoek komt?] ->Antwoord1
*[Voelt het nog gek voor u om hier als trans man te zitten?] ->Antwoord2
*[Wat was uw naam voor uw transitie?] ->Antwoord3
*[U mag het aangeven als u een pauze nodig heeft, ik werk in uw tempo.] -> Antwoord4
*->
Je kunt nu beter met het onderzoek gaan beginnen.
-> Onderzoek

=== Antwoord1 ===
#emotion:Noa_happy
Is dit de eerste keer dat u voor dit onderzoek komt? #speaker:Speler #layout:Right #feedback:Zorgvuldige en betrokken aanpak. Je vroeg op een respectvolle manier naar de ervaring met het onderzoek en creëerde ruimte voor verwarring of onzekerheid. Je bevestigde vervolgens dat je de patiënt goed begeleidt én praktische ondersteuning biedt, dat maakt het verschil tussen een ongemakkelijke ervaring en een positieve. Transgenderpersonen worden soms onverwacht opgeroepen voor onderzoeken die niet goed aansluiten op hun genderidentiteit. Door niet alleen uitleg te geven, maar ook te helpen bij het aanpassen van oproepen of registraties, toon je respect én handelingsperspectief.

Ja, dit is de eerste keer. Ik had er ook niet meer bij stilgestaan dat ik hiervoor uitgenodigd zou worden. #speaker:Noa #layout:Left #feedback:Zorgvuldige en betrokken aanpak. Je vroeg op een respectvolle manier naar de ervaring met het onderzoek en creëerde ruimte voor verwarring of onzekerheid. Je bevestigde vervolgens dat je de patiënt goed begeleidt én praktische ondersteuning biedt, dat maakt het verschil tussen een ongemakkelijke ervaring en een positieve. Transgenderpersonen worden soms onverwacht opgeroepen voor onderzoeken die niet goed aansluiten op hun genderidentiteit. Door niet alleen uitleg te geven, maar ook te helpen bij het aanpassen van oproepen of registraties, toon je respect én handelingsperspectief.

Fijn dat u het aangeeft. Dan zal ik, zoals gezegd, alles rustig stap voor stap met u doornemen. Straks zal ik ook uitleggen hoe u dat kunt laten aanpassen, als u dat wilt. #speaker:Speler #layout:Right

Oh, dat zou inderdaad wel fijn zijn. Dan kan ik zelf even kijken wat ik wil. #speaker:Noa #layout:Left

~ score = score + 1
->Next3
=== Antwoord2 ===
#emotion:Noa_uncomfortable
Voelt het nog gek voor u om hier als trans man te zitten? #speaker:Speler #layout:Right #feedback:Let op; goedbedoeld, maar onnodig persoonlijk. Je probeerde interesse of betrokkenheid te tonen, en dat is begrijpelijk. Maar door te vragen hoe het ‘voelt’ om als trans man op dat moment daar te zijn, maak je het gesprek persoonlijker dan nodig is binnen een medische context. Voor sommige transgender personen kan dit overkomen als nieuwsgierigheid, of als een reminder dat ze ‘anders’ zijn, terwijl ze juist normale, veilige zorg willen ontvangen. Richt je op de zorgtaak.

Ik snap dat u interesse wilt tonen, maar ik begrijp niet wat dit verder toevoegt aan het onderzoek. Daarom wil ik het hier liever niet over hebben, nu. #speaker:Noa #layout:Left #feedback:Let op; goedbedoeld, maar onnodig persoonlijk. Je probeerde interesse of betrokkenheid te tonen, en dat is begrijpelijk. Maar door te vragen hoe het ‘voelt’ om als trans man op dat moment daar te zijn, maak je het gesprek persoonlijker dan nodig is binnen een medische context. Voor sommige transgender personen kan dit overkomen als nieuwsgierigheid, of als een reminder dat ze ‘anders’ zijn, terwijl ze juist normale, veilige zorg willen ontvangen. Richt je op de zorgtaak.

Oh, excuus. Het was niet mijn bedoeling om u ongemakkelijk te maken. #speaker:Speler #layout:Right

~ score = score - 1
-> Onderzoek
=== Antwoord3 ===
#emotion:Noa_angry
Wat was uw naam voor uw transitie? #speaker:Speler #layout:Right #feedback:Ongepaste en niet-medisch relevante vraag. Vragen naar iemands naam vóór hun transitie, ook wel de ‘deadname’ genoemd, worden over het algemeen als kwetsend, ongepast of zelfs respectloos ervaren. Deze informatie is vrijwel nooit nodig voor goede zorg. Het stellen van zo'n vraag kan het vertrouwen van de patiënt ernstig beschadigen, ook al is het niet kwaad bedoeld. Houd vragen functioneel en relevant.

Dat is geen informatie die ik nu met u wil delen! #speaker:Noa #layout:Left #feedback:Ongepaste en niet-medisch relevante vraag. Vragen naar iemands naam vóór hun transitie, ook wel de ‘deadname’ genoemd, worden over het algemeen als kwetsend, ongepast of zelfs respectloos ervaren. Deze informatie is vrijwel nooit nodig voor goede zorg. Het stellen van zo'n vraag kan het vertrouwen van de patiënt ernstig beschadigen, ook al is het niet kwaad bedoeld. Houd vragen functioneel en relevant.

Oh, oké, sorry. Laten we verdergaan. #speaker:Speler #layout:Right

~ score = score - 1
-> Onderzoek
=== Antwoord4 ===
#emotion:Noa_happy
U mag het aangeven als u even een pauze nodig heeft; ik werk in uw tempo. #speaker:Speler #layout:Right #feedback:Zeer empathisch en professioneel. Door expliciet te zeggen dat de patiënt het tempo mag bepalen en dat er ruimte is voor pauze, geef je controle terug aan de patiënt. Zeker voor transgenderpersonen, voor wie dit onderzoek extra kwetsbaar kan zijn, is dit essentieel om spanning te verlagen en vertrouwen te versterken. Deze benadering laat zien dat je écht afstemt op de behoefte van de patiënt en dat je veiligheid boven snelheid stelt. Let wel; niet iedere patiënt zal het durven aangeven als het te snel gaat of ongemakkelijk wordt, zelfs als je die ruimte biedt. Daarom is het belangrijk om ook zélf actief te blijven letten op lichaamstaal en signalen van ongemak.

Fijn dat u het zegt. Ik zal het aangeven wanneer het te snel gaat voor mij. #speaker:Noa #layout:Left #feedback:Zeer empathisch en professioneel. Door expliciet te zeggen dat de patiënt het tempo mag bepalen en dat er ruimte is voor pauze, geef je controle terug aan de patiënt. Zeker voor transgenderpersonen, voor wie dit onderzoek extra kwetsbaar kan zijn, is dit essentieel om spanning te verlagen en vertrouwen te versterken. Deze benadering laat zien dat je écht afstemt op de behoefte van de patiënt en dat je veiligheid boven snelheid stelt. Let wel; niet iedere patiënt zal het durven aangeven als het te snel gaat of ongemakkelijk wordt, zelfs als je die ruimte biedt. Daarom is het belangrijk om ook zélf actief te blijven letten op lichaamstaal en signalen van ongemak.

~ score = score + 1
-> Next3

=== Onderzoek ===
~ onderzoek_gedaan = true
Voor een beter verloop van het onderzoek wil je eigenlijk weten of de patiënt testosteron gebruikt. Hoe stel je deze vraag? #speaker:--- 

*[Nee, deze vraag kan ik echt niet stellen.] -> Neutraal2
*[Breng het rustig en vermeld dat je dit moet weten voor het onderzoek.] ->Positief2
*[Vraag het direct, ik kan er maar beter niet omheen draaien.] -> Negatief2

=== Neutraal2 ===
#emotion:Noa_neutral
Oké, als alles helemaal duidelijk is voor u en u verder geen vragen meer heeft, mag u achter het gordijn uw onderlichaam uitkleden en vervolgens plaatsnemen op het bed. #speaker:Speler #layout:Right #feedback:In dit geval is het belangrijk om te weten of de patiënt testosteron gebruikt, omdat dit invloed kan hebben op het verloop van het onderzoek (zoals vaginale droogheid of anatomische veranderingen). Wat veel transgenderpersonen waarderen, is dat zorgverleners medisch relevante vragen op een respectvolle manier stellen, met uitleg waarom de vraag gesteld wordt. Als je deze informatie al in het dossier hebt gelezen, is het stellen van deze vraag inderdaad niet nodig.

Nee, ik heb geen vragen meer. Oké, dan ga ik dat doen. #speaker:Noa #layout:Left #feedback:In dit geval is het belangrijk om te weten of de patiënt testosteron gebruikt, omdat dit invloed kan hebben op het verloop van het onderzoek (zoals vaginale droogheid of anatomische veranderingen). Wat veel transgenderpersonen waarderen, is dat zorgverleners medisch relevante vragen op een respectvolle manier stellen, met uitleg waarom de vraag gesteld wordt. Als je deze informatie al in het dossier hebt gelezen, is het stellen van deze vraag inderdaad niet nodig.

~ score = score + 0
-> Laatste
=== Positief2 ===
#emotion:Noa_neutral
Ik weet dat dit misschien een gevoelige vraag is, maar ik moet hem stellen zodat ik weet waar ik rekening mee moet houden tijdens het onderzoek. Gebruikt u op dit moment testosteron? #speaker:Speler #layout:Right #feedback:Je gaf een reden waarom je de vraag stelde, en dat is goed. Uitleg biedt context en voorkomt dat het persoonlijk voelt. Tip; bouw dit soort vragen geleidelijk op, bijvoorbeeld door te zeggen; 'Mag ik u een medische vraag stellen die belangrijk is voor het onderzoek?', zo bereid je de patiënt voor. Goede zorg is niet alleen wát je vraagt, maar ook hóe je het brengt. Als je deze informatie al in het dossier hebt gelezen, is het stellen van deze vraag doorgaans niet nodig.

Oh, deze vraag overvalt me een beetje, maar als u het moet weten vanwege het onderzoek: ja, ik gebruik testosteron. #speaker:Noa #layout:Left #feedback:Je gaf een reden waarom je de vraag stelde, en dat is goed. Uitleg biedt context en voorkomt dat het persoonlijk voelt. Tip; bouw dit soort vragen geleidelijk op, bijvoorbeeld door te zeggen; 'Mag ik u een medische vraag stellen die belangrijk is voor het onderzoek?', zo bereid je de patiënt voor. Goede zorg is niet alleen wát je vraagt, maar ook hóe je het brengt. Als je deze informatie al in het dossier hebt gelezen, is het stellen van deze vraag doorgaans niet nodig.

Ik snap dat deze vraag u overvalt, maar het heeft inderdaad effect op het verloop van het onderzoek. U mag achter het gordijn uw onderlichaam uitkleden en vervolgens op het bed plaatsnemen, waarna we aan het onderzoek beginnen. #speaker:Speler #layout:Right

~ score = score + 1
-> Laatste
=== Negatief2 ===
#emotion:Noa_uncomfortable
U mag uw onderlichaam achter het gordijn uitkleden en vervolgens op het bed plaatsnemen. Maar voordat u dat doet, heb ik nog één vraag: gebruikt u testosteron? #speaker:Speler #layout:Right #feedback:Je stelde een medische vraag zonder context of uitleg. Voor transgenderpersonen kan zo'n directe vraag ongemakkelijk of zelfs bedreigend aanvoelen, vooral als niet duidelijk is waarom je die stelt. Wat beter werkt? Begin met een inleidende opmerking, zoals: ‘Voor dit onderzoek is het soms belangrijk om te weten of iemand bepaalde medicatie gebruikt. Mag ik u daar iets over vragen?’ Zo geef je controle, context én respect. Als je deze informatie al in het dossier had gelezen, was het stellen van deze vraag helemaal niet nodig geweest.

Pardon! Waarom wilt u dat weten? Ik vind dit echt een ongepaste vraag! #speaker:Noa #layout:Left #feedback:Je stelde een medische vraag zonder context of uitleg. Voor transgenderpersonen kan zo'n directe vraag ongemakkelijk of zelfs bedreigend aanvoelen, vooral als niet duidelijk is waarom je die stelt. Wat beter werkt? Begin met een inleidende opmerking, zoals: ‘Voor dit onderzoek is het soms belangrijk om te weten of iemand bepaalde medicatie gebruikt. Mag ik u daar iets over vragen?’ Zo geef je controle, context én respect. Als je deze informatie al in het dossier had gelezen, was het stellen van deze vraag helemaal niet nodig geweest.

Ik moet het weten voor het onderzoek, omdat dit namelijk het verloop van het onderzoek kan beïnvloeden. Het spijt me dat deze vraag u zo overvalt. #speaker:Speler #layout:Right 

~ score = score - 1
-> Laatste

=== Laatste ===
Je gaat het onderzoek starten. #speaker:---

* [Begin direct aan het onderzoek] ->Keuze10
* [Geef aan dat je gaat beginnen en vraag of je de patiënt mag aanraken.] -> Keuze11
* [Gee aan dat je begint met het onderzoek en geef uitleg zodra je de handeling uitvoert.] ->Keuze12

=== Keuze10 ===
#emotion:Noa_uncomfortable
Oh... ik had het fijn gevonden als u even had gezegd dat u ging beginnen. #speaker:Noa #layout:Left #feedback:Let op; je bent begonnen met het onderzoek zonder dit aan te kondigen of toestemming te vragen. Voor veel transgenderpersonen is een uitstrijkje een gevoelig of beladen onderzoek. Door niet aan te kondigen wat je doet, kan iemand zich overvallen voelen of spanning ervaren. Wat beter werkt; geef altijd aan wat je gaat doen en vraag toestemming voor lichamelijk contact.

Dank u dat u het aangeeft. Ik zal voortaan duidelijk zeggen wat ik ga doen en wanneer ik ga beginnen. #speaker:Speler #layout:Right #feedback:Let op; je bent begonnen met het onderzoek zonder dit aan te kondigen of toestemming te vragen. Voor veel transgenderpersonen is een uitstrijkje een gevoelig of beladen onderzoek. Door niet aan te kondigen wat je doet, kan iemand zich overvallen voelen of spanning ervaren. Wat beter werkt; geef altijd aan wat je gaat doen en vraag toestemming voor lichamelijk contact.

~ score = score - 1
-> einde
=== Keuze11 ===
#emotion:Noa_happy
Ik ga zo beginnen met het onderzoek. Is het goed als ik u aanraak? #speaker:Speler #layout:Right #feedback:Goede keuze! Door duidelijk aan te geven wat je gaat doen en expliciet toestemming te vragen, geef je de patiënt controle over zijn of haar lichaam en situatie. Dit is extra belangrijk voor mensen die spanning of dysforie kunnen ervaren bij medische onderzoeken.

Ja, dat is goed. Fijn dat u het even aangeeft. #speaker:Noa #layout:Left #feedback:Goede keuze! Door duidelijk aan te geven wat je gaat doen en expliciet toestemming te vragen, geef je de patiënt controle over zijn of haar lichaam en situatie. Dit is extra belangrijk voor mensen die spanning of dysforie kunnen ervaren bij medische onderzoeken.

Fijn om te horen. Laat het me weten als u ergens ongemak voelt. #speaker:Speler #layout:Right

~ score = score + 1
->einde
=== Keuze12 ===
#emotion:Noa_nervous
Gaat het goed met u? Ik ben nu het speculum aan het inbrengen. #speaker:Speler #layout:Right #feedback:Goed dat je aangeeft dat je gaat beginnen met het onderzoek. De meeste patiënten vinden het echter prettig als je vooraf duidelijk vertelt welke stap je gaat uitvoeren. Dit geeft hen meer controle over hun eigen lichaam en de situatie. Daarnaast wordt het altijd aanbevolen om toestemming te vragen voordat je de patiënt aanraakt. Vooral bij transgenderpersonen kan onverwacht lichamelijk contact als intimiderend worden ervaren. Door op deze manier te handelen, toon je respect en vergroot je het vertrouwen van de patiënt.

Nou, het voelt niet heel prettig aan, en ik had het fijn gevonden als u vooraf had aangegeven wat u ging doen! #speaker:Noa #layout:Left #feedback:Goed dat je aangeeft dat je gaat beginnen met het onderzoek. De meeste patiënten vinden het echter prettig als je vooraf duidelijk vertelt welke stap je gaat uitvoeren. Dit geeft hen meer controle over hun eigen lichaam en de situatie. Daarnaast wordt het altijd aanbevolen om toestemming te vragen voordat je de patiënt aanraakt. Vooral bij transgenderpersonen kan onverwacht lichamelijk contact als intimiderend worden ervaren. Door op deze manier te handelen, toon je respect en vergroot je het vertrouwen van de patiënt.

Natuurlijk, dat had ik zeker moeten doen. Ik zal er vanaf nu op letten. #speaker:Speler #layout:Right 

~ score = score + 0
->einde

=== einde ===
Het speculum zorgt tijdens het inbrengen bij de patiënt voor veel ongemak! Wat doe je? #speaker:---

*[Geef aan dat het onderzoek ongemakkelijk kan aanvoelen en ga daarna rustig door.]
->Niks
*[Kijk of het met een kleiner speculum comfortabeler aanvoelt voor de patiënt.] ->Speculum
*[Gebruik extra glijmiddel om het speculum toch in te kunnen brengen.] -> Glijmiddel

=== Niks ===
#emotion:Noa_nervous
Kunt u misschien iets rustiger aan doen? Het voelt niet prettig. #speaker:Noa #layout:Left #feedback:Onvoldoende afstemming en respect voor de grens van de patiënt. Je gaf aan dat het onderzoek ongemakkelijk kan zijn, maar je ging tóch door terwijl de patiënt ongemak ervaarde. Voor veel transgenderpersonen, en eigenlijk voor iedereen, is het cruciaal dat zij zich gehoord en gerespecteerd voelen tijdens een inwendig onderzoek. Door door te gaan zonder te checken of de patiënt wil dat je doorgaat, neem je de controle uit handen. Dat kan leiden tot verlies van vertrouwen, spanning of zelfs hertraumatisering.

Het onderzoek kan inderdaad wat vervelend aanvoelen, maar daar kan ik nu helaas niks aan veranderen. #speaker:Speler #layout:Right #feedback:Onvoldoende afstemming en respect voor de grens van de patiënt. Je gaf aan dat het onderzoek ongemakkelijk kan zijn, maar je ging tóch door terwijl de patiënt ongemak ervaarde. Voor veel transgenderpersonen, en eigenlijk voor iedereen, is het cruciaal dat zij zich gehoord en gerespecteerd voelen tijdens een inwendig onderzoek. Door door te gaan zonder te checken of de patiënt wil dat je doorgaat, neem je de controle uit handen. Dat kan leiden tot verlies van vertrouwen, spanning of zelfs hertraumatisering.

~ score = score + 0
->END
=== Speculum ===
#emotion:Noa_happy
Kunt u misschien iets rustiger aan doen? Het voelt niet prettig. #speaker:Noa #layout:Left #feedback:Goede respons! Je herkende het ongemak van de patiënt en koos ervoor om je aanpak aan te passen. Dat laat zien dat je sensitief omgaat met signalen van pijn of spanning, essentieel bij intieme onderzoeken, zeker bij transgenderpersonen. Het gebruik van een kleiner speculum is een eenvoudige maar doeltreffende manier om het comfort te vergroten, zeker bij vaginale atrofie door testosterongebruik of verhoogde bekkenbodemspanning.

Goed dat u het aangeeft. Ik zal kijken of het met een kleiner speculum wat fijner aanvoelt. #speaker:Speler #layout:Right #feedback:Goede respons! Je herkende het ongemak van de patiënt en koos ervoor om je aanpak aan te passen. Dat laat zien dat je sensitief omgaat met signalen van pijn of spanning, essentieel bij intieme onderzoeken, zeker bij transgenderpersonen. Het gebruik van een kleiner speculum is een eenvoudige maar doeltreffende manier om het comfort te vergroten, zeker bij vaginale atrofie door testosterongebruik of verhoogde bekkenbodemspanning.

~ score = score + 1
->END
=== Glijmiddel ===
#emotion:Noa_happy
Kunt u misschien iets rustiger aan doen? Het voelt niet prettig. #speaker:Noa #layout:Left #feedback:Glijmiddel kan het inbrengen van het speculum vergemakkelijken, zeker bij vaginale droogheid door testosteron. Je denkt hiermee goed aan het comfort van de patiënt, en dat is belangrijk. Maar het gebruik van glijmiddel is niet altijd toegestaan, omdat het de kwaliteit van het uitstrijkje kan beïnvloeden. Check altijd vooraf of glijmiddel is toegestaan binnen de laboratoriumrichtlijnen.

Goed dat u het aangeeft. Ik zal wat extra glijmiddel gebruiken om het wat soepeler te maken. #speaker:Speler #layout:Right #feedback:Glijmiddel kan het inbrengen van het speculum vergemakkelijken, zeker bij vaginale droogheid door testosteron. Je denkt hiermee goed aan het comfort van de patiënt, en dat is belangrijk. Maar het gebruik van glijmiddel is niet altijd toegestaan, omdat het de kwaliteit van het uitstrijkje kan beïnvloeden. Check altijd vooraf of glijmiddel is toegestaan binnen de laboratoriumrichtlijnen.
~ score = score + 1
->END




