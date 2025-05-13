VAR score = 0
#emotion:Noa_neutral

Goedemorgen, ik kom voor het bevolkingsonderzoek. Ik heb een uitnodiging met de post ontvangen. #speaker:Patiënt

* [Aah u bent vast mevrouw van Helder] -> optie1
* [Goedemorgen mevrouw van Helder] -> optie2
* [Goedemorgen, heeft u ook een afspraak gemaakt?] -> optie3
* [Goedemorgen Noa, wat fijn dat je er bent.] -> optie4
* [Goedemorgen meneer van Helder.] -> optie5

=== optie1 ===
#emotion:Noa_angry
Aah u bent vast mevrouw van Helder #speaker:Speler


Ik heb aangegeven dat ik meneer ben. Ik zou het fijn vinden als dat gerespecteerd wordt. #speaker:Noa


Oh, uh excuus. Heeft u een afspraak gemaakt en heeft u de uitnodiging voor mij? #speaker:Speler


Ja die heb ik, en de brief heb ik hier bij me! #speaker:Noa

~ score = score - 1
-> uitnodiging

=== optie2 ===
#emotion:Noa_angry

Goedemorgen mevrouw van Helder. #speaker:Speler


Ik heb aangegeven dat ik meneer ben. Ik zou het fijn vinden als dat gerespecteerd  wordt. #speaker:Noa


Oh, uh excuus. Heeft u een afspraak gemaakt en heeft u de uitnodiging voor mij? #speaker:Speler


Ja die heb ik, en de brief heb ik hier bij me! #speaker:Noa

~ score = score - 1
-> uitnodiging

=== optie3 ===
#emotion:Noa_neutral

Goedemorgen, heeft u ook een afspraak gemaakt? #speaker:Speler


Ja ik heb gister telefonisch een afspraak gemaakt. #speaker:Noa


Dat is mooi dan ga ik dat even voor u opzoeken in het systeem, heeft u ook de uitnodiging voor mij? #speaker:Speler


Ja die heb ik hier bij mij. #speaker:Noa
~ score = score + 0
-> uitnodiging

=== optie4 ===
#emotion:Noa_happy

Goedemorgen Noa, wat fijn dat je er bent. #speaker:Speler

Jazeker fijn dat ik zo snel een afspraak kon maken. #speaker:Noa

Ja we hadden toevallig nog een gaatje vrij, heeft u de uitnodiging voor mij? #speaker:Speler

Ja die heb ik bij me. #speaker:Noa
~ score = score + 1
-> uitnodiging

=== optie5 ===
#emotion:Noa_happy

Goedemorgen meneer van Helder, wat kan ik voor u doen? #speaker:Speler


Ik heb een afspraak gemaakt en heb hier de uitnodiging bij mij. #speaker:Noa


Dat is mooi, mag ik de uitnodiging even zien? Dan kan ik de gegevens checken in het systeem. #speaker:Speler
~ score = score + 1
-> uitnodiging

=== uitnodiging ===

Je checkt de gegevens op de uitnodiging met die in het systeem. Maar de patiënt word door ons systeem niet herkend als vrouw! Wat doe je nu? #speaker:---
* [Negeer de melding en ga verder] -> Neutraal
* [Neem even een kort momentje om begrip te tonen naar de patiënt] -> Positief
* [Vraag aan de patiënt of hij kan uitleggen wat de situatie is.] -> Negatief

=== Neutraal ===
#emotion:Noa_neutral

Oke alles klopt, ik zie uw afspraak in de agenda staan. Had u nog ergens vragen over? #speaker:Speler


Oke dat is fijn. Nee ik heb voor nu geen vragen. #speaker:Noa


Dat is fijn! Dan mag u nu even plaatsnemen in de wachtkamer en dan word u dalijk opgeroepen. #speaker:Speler
~ score = score + 0
-> einde
=== Positief ===
#emotion:Noa_happy

Fijn dat u er bent. U bent hier altijd welkom, en als er iets is wat ik voor u kan doen om het prettiger te maken, zeg het gerust. #speaker:Speler


Wat fijn om zo ontvangen te worden, dankjewel, dat doet me echt goed! #speaker:Noa


Dat is goed om te horen! U mag even plaatsnemen in de wachtkamer en dan word u daijk opgeroepen. #speaker:Speler

~ score = score + 1
-> einde
=== Negatief ===
#emotion:Noa_angry

Ik mer dat er iets niet helemaal overeenkomt tussen de gegevens op de uitnodiging en wat ik in het systeem zie. Kunt u mij vertellen hoe dat komt, zodat ik het goed begrijp? #speaker:Speler


Waarom moet ik dit weer uitleggen? Dit staat al zo vaak ergens genoteerd en toch lijkt het elke keer alsof ik opnieuw moet bewijzen wie ik ben. #speaker:Noa


oh excuus voor het ongemak. Neemt u maar even plaats in de wachtkamer, ik zal u zo oproepen. #speaker:Speler
~ score = score - 1
-> einde

=== einde ===
Jouw score is: {score}.

->END
