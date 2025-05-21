VAR score = 0
#emotion:Noa_neutral

Goedemorgen, ik kom voor het bevolkingsonderzoek. Ik heb een uitnodiging met de post ontvangen. #speaker:Patiënt

* [Ah, u bent vast mevrouw Van Helder] -> optie1
* [Goedemorgen, mevrouw Van Helder] -> optie2
* [Goedemorgen, heeft u ook een afspraak gemaakt?] -> optie3
* [Goedemorgen, Noa, wat fijn dat je er bent.] -> optie4
* [Goedemorgen, meneer Van Helder.] -> optie5

=== optie1 ===
#emotion:Noa_angry
Ah, u bent vast mevrouw Van Helder #speaker:Speler #layout:Right #feedback:Let op; Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals; “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.



Ik heb aangegeven dat ik meneer ben. Ik zou het fijn vinden als dat gerespecteerd wordt. #speaker:Noa #layout:Left #feedback:Let op; Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals; “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Oh, uh, excuus. Heeft u een afspraak gemaakt en heeft u de uitnodiging voor mij? #speaker:Speler #layout:Right



Ja, die heb ik. En de brief heb ik hier bij me! #speaker:Noa #layout:Left

~ score = score - 1
-> uitnodiging

=== optie2 ===
#emotion:Noa_angry

Goedemorgen, mevrouw Van Helder. #speaker:Speler #layout:Right #feedback:Let op; Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals; “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Ik heb aangegeven dat ik meneer ben. Ik zou het fijn vinden als dat gerespecteerd  wordt. #speaker:Noa #layout:Left #feedback:Let op; Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals; “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Oh, uh, excuus. Heeft u een afspraak gemaakt en heeft u de uitnodiging voor mij? #speaker:Speler #layout:Right


Ja, die heb ik. En de brief heb ik hier bij me! #speaker:Noa #layout:Left

~ score = score - 1
-> uitnodiging

=== optie3 ===
#emotion:Noa_neutral

Goedemorgen, heeft u ook een afspraak gemaakt? #speaker:Speler #layout:Right #feedback:Je begroette de patiënt op een neutrale en respectvolle manier. Dat is een veilige aanpak, zeker als je iemand voor het eerst spreekt en nog niet weet hoe die graag aangesproken wil worden. Als je wél weet hoe iemand genoemd of aangesproken wil worden, is het juist prettig om daar bewust gebruik van te maken.


Ja, ik heb gisteren telefonisch een afspraak gemaakt. #speaker:Noa #layout:Left #feedback:Je begroette de patiënt op een neutrale en respectvolle manier. Dat is een veilige aanpak, zeker als je iemand voor het eerst spreekt en nog niet weet hoe die graag aangesproken wil worden. Als je wél weet hoe iemand genoemd of aangesproken wil worden, is het juist prettig om daar bewust gebruik van te maken.


Mooi, dan ga ik dat even voor u opzoeken in het systeem. Heeft u ook de uitnodiging voor mij? #speaker:Speler #layout:Right


Ja, die heb ik hier bij me. #speaker:Noa #layout:Left

~ score = score + 0
-> uitnodiging

=== optie4 ===
#emotion:Noa_happy

Goedemorgen, Noa, wat fijn dat je er bent. #speaker:Speler #layout:Right #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om die bewust toe te passen, het helpt bij het opbouwen van vertrouwen en een gevoel van veiligheid.

Jazeker, fijn dat ik zo snel een afspraak kon maken. #speaker:Noa #layout:Left #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om die bewust toe te passen, het helpt bij het opbouwen van vertrouwen en een gevoel van veiligheid.

Ja, we hadden toevallig nog een gaatje vrij. Heeft u de uitnodiging voor mij? #speaker:Speler #layout:Right 

Ja die heb ik bij me. #speaker:Noa #layout:Left

~ score = score + 1
-> uitnodiging

=== optie5 ===
#emotion:Noa_happy

Goedemorgen, meneer Van Helder, wat kan ik voor u doen? #speaker:Speler #layout:Right #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om die bewust toe te passen, het helpt bij het opbouwen van vertrouwen en een gevoel van veiligheid.


Ik heb een afspraak gemaakt en ik heb de uitnodiging hier bij me. #speaker:Noa #layout:Left #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om die bewust toe te passen, het helpt bij het opbouwen van vertrouwen en een gevoel van veiligheid.


Dat is mooi. Mag ik de uitnodiging even zien? Dan kan ik de gegevens controleren in het systeem. #speaker:Speler #layout:Right 
~ score = score + 1
-> uitnodiging

=== uitnodiging ===

Je checkt de gegevens op de uitnodiging met die in het systeem. Maar de patiënt wordt door ons systeem niet herkend als vrouw! Wat doe je nu? #speaker:--- #layout:Left
* [Negeer de melding, en ga verder.] -> Neutraal
* [Los het probleem op zonder de patiënt hiermee lastig te vallen.] -> Positief
* [Vraag de patiënt of hij kan uitleggen wat de situatie is.] -> Negatief

=== Neutraal ===
#emotion:Noa_neutral

Oké, alles klopt. Ik zie uw afspraak in de agenda staan. Had u nog vragen? #speaker:Speler #layout:Right #feedback:Soms geven systemen foutmeldingen wanneer iemands genderidentiteit niet ‘past’ binnen de standaardopties. Het belangrijkste is dat jij als zorgverlener de persoon voor je serieus neemt. Let op; als je meldingen negeert zonder na te denken, kan dat tot fouten leiden. In dit geval was doorgaan prima, maar bij twijfel is het altijd goed om even te controleren of het medisch-technische gevolgen heeft.


Oké, dat is fijn. Nee, ik heb voor nu geen vragen. #speaker:Noa #layout:Left #feedback:Soms geven systemen foutmeldingen wanneer iemands genderidentiteit niet ‘past’ binnen de standaardopties. Het belangrijkste is dat jij als zorgverlener de persoon voor je serieus neemt. Let op; als je meldingen negeert zonder na te denken, kan dat tot fouten leiden. In dit geval was doorgaan prima, maar bij twijfel is het altijd goed om even te controleren of het medisch-technische gevolgen heeft.


Dat is fijn! U mag nu plaatsnemen in de wachtkamer, dan wordt u zo dadelijk opgeroepen. #speaker:Speler #layout:Right
~ score = score + 0
-> einde
=== Positief ===
#emotion:Noa_happy

Oké, alles klopt. Ik zie uw afspraak in de agenda staan. Had u nog vragen? #speaker:Speler #layout:Right #feedback:Je koos ervoor om het probleem op te lossen zonder de patiënt hiervan op de hoogte te stellen. Het is goed dat je het zelfstandig aanpakt, transgenderpatiënten kunnen het namelijk als onprettig ervaren om met dit soort problemen geconfronteerd te worden. Controleer wel altijd of dit soort problemen medisch-technische gevolgen kunnen hebben.


Oké, dat is fijn. Nee, ik heb voor nu geen vragen. #speaker:Noa #layout:Left #feedback:Je koos ervoor om het probleem op te lossen zonder de patiënt hiervan op de hoogte te stellen. Het is goed dat je het zelfstandig aanpakt, transgenderpatiënten kunnen het namelijk als onprettig ervaren om met dit soort problemen geconfronteerd te worden. Controleer wel altijd of dit soort problemen medisch-technische gevolgen kunnen hebben.


Dat is fijn! U mag nu plaatsnemen in de wachtkamer, dan wordt u zo dadelijk opgeroepen. #speaker:Speler #layout:Right

~ score = score + 1
-> einde
=== Negatief ===
#emotion:Noa_angry

Ik merk dat er iets niet helemaal overeenkomt tussen de gegevens op de uitnodiging en wat ik in het systeem zie. Kunt u mij vertellen hoe dat komt, zodat ik het goed begrijp? #speaker:Speler #layout:Right #feedback:Let op; je bedoelde het goed, maar je legde de verantwoordelijkheid bij de patiënt om een fout in het systeem toe te lichten. Dat kan frustrerend zijn, zeker als iemand dat al vaak heeft moeten doen. Probeer het de volgende keer om te draaien; laat zien dat jij het signaleert én dat jij het gaat uitzoeken. Zo voelt de patiënt zich serieus genomen en niet belast met het werk.


Waarom moet ik dit weer uitleggen? Het staat al zo vaak ergens genoteerd, en toch lijkt het elke keer alsof ik opnieuw moet bewijzen wie ik ben. #speaker:Noa #layout:Left #feedback:Let op; je bedoelde het goed, maar je legde de verantwoordelijkheid bij de patiënt om een fout in het systeem toe te lichten. Dat kan frustrerend zijn, zeker als iemand dat al vaak heeft moeten doen. Probeer het de volgende keer om te draaien; laat zien dat jij het signaleert én dat jij het gaat uitzoeken. Zo voelt de patiënt zich serieus genomen en niet belast met het werk.


Oh, excuus voor het ongemak. Neemt u maar even plaats in de wachtkamer, ik zal u zo oproepen. #speaker:Speler #layout:Right

~ score = score - 1
-> einde

=== einde ===

->END
