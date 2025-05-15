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
Aah u bent vast mevrouw van Helder #speaker:Speler #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.



Ik heb aangegeven dat ik meneer ben. Ik zou het fijn vinden als dat gerespecteerd wordt. #speaker:Noa #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Oh, uh excuus. Heeft u een afspraak gemaakt en heeft u de uitnodiging voor mij? #speaker:Speler #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.



Ja die heb ik, en de brief heb ik hier bij me! #speaker:Noa #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


~ score = score - 1
-> uitnodiging

=== optie2 ===
#emotion:Noa_angry

Goedemorgen mevrouw van Helder. #speaker:Speler #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Ik heb aangegeven dat ik meneer ben. Ik zou het fijn vinden als dat gerespecteerd  wordt. #speaker:Noa #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Oh, uh excuus. Heeft u een afspraak gemaakt en heeft u de uitnodiging voor mij? #speaker:Speler #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.


Ja die heb ik, en de brief heb ik hier bij me! #speaker:Noa #feedback:Let op. Je sprak de patiënt aan met “mevrouw”, terwijl hij een transgenderman is. Dit kan pijnlijk zijn en maakt dat de patiënt zich minder gezien voelt. Probeer bij binnenkomst te beginnen met een neutrale begroeting, zoals, “Goedemorgen, welkom! Wat fijn dat u er bent.” Zo voorkom je dat je onbedoeld iemand verkeerd aanspreekt.

~ score = score - 1
-> uitnodiging

=== optie3 ===
#emotion:Noa_neutral

Goedemorgen, heeft u ook een afspraak gemaakt? #speaker:Speler #feedback:Je begroette de patiënt op een neutrale en respectvolle manier. Dat is een veilige aanpak, zeker als je iemand voor het eerst spreekt en nog niet weet hoe die graag aangesproken wil worden. Als je wél weet hoe iemand genoemd of aangesproken wil worden , dan is het juist prettig om dat bewust te gebruiken.


Ja ik heb gister telefonisch een afspraak gemaakt. #speaker:Noa #feedback:Je begroette de patiënt op een neutrale en respectvolle manier. Dat is een veilige aanpak, zeker als je iemand voor het eerst spreekt en nog niet weet hoe die graag aangesproken wil worden. Als je wél weet hoe iemand genoemd of aangesproken wil worden , dan is het juist prettig om dat bewust te gebruiken.


Dat is mooi dan ga ik dat even voor u opzoeken in het systeem, heeft u ook de uitnodiging voor mij? #speaker:Speler #feedback:Je begroette de patiënt op een neutrale en respectvolle manier. Dat is een veilige aanpak, zeker als je iemand voor het eerst spreekt en nog niet weet hoe die graag aangesproken wil worden. Als je wél weet hoe iemand genoemd of aangesproken wil worden , dan is het juist prettig om dat bewust te gebruiken. 


Ja die heb ik hier bij mij. #speaker:Noa #feedback:Je begroette de patiënt op een neutrale en respectvolle manier. Dat is een veilige aanpak, zeker als je iemand voor het eerst spreekt en nog niet weet hoe die graag aangesproken wil worden. Als je wél weet hoe iemand genoemd of aangesproken wil worden , dan is het juist prettig om dat bewust te gebruiken.
~ score = score + 0
-> uitnodiging

=== optie4 ===
#emotion:Noa_happy

Goedemorgen Noa, wat fijn dat je er bent. #speaker:Speler #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.

Jazeker fijn dat ik zo snel een afspraak kon maken. #speaker:Noa #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.

Ja we hadden toevallig nog een gaatje vrij, heeft u de uitnodiging voor mij? #speaker:Speler #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.

Ja die heb ik bij me. #speaker:Noa #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.
~ score = score + 1
-> uitnodiging

=== optie5 ===
#emotion:Noa_happy

Goedemorgen meneer van Helder, wat kan ik voor u doen? #speaker:Speler #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.


Ik heb een afspraak gemaakt en heb hier de uitnodiging bij mij. #speaker:Noa #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.


Dat is mooi, mag ik de uitnodiging even zien? Dan kan ik de gegevens checken in het systeem. #speaker:Speler #feedback:Goed gedaan! Je spreekt de patiënt aan zoals hij graag genoemd wil worden. Dat laat zien dat je zijn identiteit respecteert en serieus neemt. Als je iemands voorkeur kent, is het krachtig om dat bewust toe te passen — het helpt bij het opbouwen van vertrouwen en veiligheid.
~ score = score + 1
-> uitnodiging

=== uitnodiging ===

Je checkt de gegevens op de uitnodiging met die in het systeem. Maar de patiënt word door ons systeem niet herkend als vrouw! Wat doe je nu? #speaker:---
* [Negeer de melding en ga verder] -> Neutraal
* [Neem even een kort momentje om begrip te tonen naar de patiënt] -> Positief
* [Vraag aan de patiënt of hij kan uitleggen wat de situatie is.] -> Negatief

=== Neutraal ===
#emotion:Noa_neutral

Oke alles klopt, ik zie uw afspraak in de agenda staan. Had u nog ergens vragen over? #speaker:Speler #feedback:Soms geven systemen foutmeldingen wanneer iemands genderidentiteit niet ‘past’ binnen de standaardopties.Het belangrijkste is dat jij als zorgverlener de persoon voor je serieus neemt. Let op, als je meldingen negeert zonder na te denken, kan dat ook tot fouten leiden. In dit geval was doorgaan prima, maar bij twijfel is het altijd goed om even te controleren of het medisch-technisch gevolgen heeft.


Oke dat is fijn. Nee ik heb voor nu geen vragen. #speaker:Noa #feedback:Soms geven systemen foutmeldingen wanneer iemands genderidentiteit niet ‘past’ binnen de standaardopties.Het belangrijkste is dat jij als zorgverlener de persoon voor je serieus neemt. Let op, als je meldingen negeert zonder na te denken, kan dat ook tot fouten leiden. In dit geval was doorgaan prima, maar bij twijfel is het altijd goed om even te controleren of het medisch-technisch gevolgen heeft.


Dat is fijn! Dan mag u nu even plaatsnemen in de wachtkamer en dan word u dalijk opgeroepen. #speaker:Speler #feedback:Soms geven systemen foutmeldingen wanneer iemands genderidentiteit niet ‘past’ binnen de standaardopties.Het belangrijkste is dat jij als zorgverlener de persoon voor je serieus neemt. Let op, als je meldingen negeert zonder na te denken, kan dat ook tot fouten leiden. In dit geval was doorgaan prima, maar bij twijfel is het altijd goed om even te controleren of het medisch-technisch gevolgen heeft.
~ score = score + 0
-> einde
=== Positief ===
#emotion:Noa_happy

Fijn dat u er bent. U bent hier altijd welkom, en als er iets is wat ik voor u kan doen om het prettiger te maken, zeg het gerust. #speaker:Speler #feedback:Je koos ervoor om even stil te staan bij een systeemfout én tegelijkertijd de mens voor je centraal te stellen. Voor transgenderpatiënten kan een kleine erkenning al een groot verschil maken in hoe veilig en serieus ze zich voelen.


Wat fijn om zo ontvangen te worden, dankjewel, dat doet me echt goed! #speaker:Noa #feedback:Je koos ervoor om even stil te staan bij een systeemfout én tegelijkertijd de mens voor je centraal te stellen. Voor transgenderpatiënten kan een kleine erkenning al een groot verschil maken in hoe veilig en serieus ze zich voelen.


Dat is goed om te horen! U mag even plaatsnemen in de wachtkamer en dan word u daijk opgeroepen. #speaker:Speler #feedback:Je koos ervoor om even stil te staan bij een systeemfout én tegelijkertijd de mens voor je centraal te stellen. Voor transgenderpatiënten kan een kleine erkenning al een groot verschil maken in hoe veilig en serieus ze zich voelen.

~ score = score + 1
-> einde
=== Negatief ===
#emotion:Noa_angry

Ik merk dat er iets niet helemaal overeenkomt tussen de gegevens op de uitnodiging en wat ik in het systeem zie. Kunt u mij vertellen hoe dat komt, zodat ik het goed begrijp? #speaker:Speler #feedback:Let op, je bedoelde het goed, maar je legde de verantwoordelijkheid bij de patiënt om een fout in het systeem toe te lichten. Dat kan frustrerend zijn — zeker als iemand dat al vaak heeft moeten doen. Probeer het de volgende keer om te draaien, laat zien dat jij het signaleert én dat jij het gaat uitzoeken. Zo voelt de patiënt zich serieus genomen én niet belast met het werk.


Waarom moet ik dit weer uitleggen? Dit staat al zo vaak ergens genoteerd en toch lijkt het elke keer alsof ik opnieuw moet bewijzen wie ik ben. #speaker:Noa #feedback:Let op, je bedoelde het goed, maar je legde de verantwoordelijkheid bij de patiënt om een fout in het systeem toe te lichten. Dat kan frustrerend zijn — zeker als iemand dat al vaak heeft moeten doen. Probeer het de volgende keer om te draaien, laat zien dat jij het signaleert én dat jij het gaat uitzoeken. Zo voelt de patiënt zich serieus genomen én niet belast met het werk.


oh excuus voor het ongemak. Neemt u maar even plaats in de wachtkamer, ik zal u zo oproepen. #speaker:Speler #feedback:Let op, je bedoelde het goed, maar je legde de verantwoordelijkheid bij de patiënt om een fout in het systeem toe te lichten. Dat kan frustrerend zijn — zeker als iemand dat al vaak heeft moeten doen. Probeer het de volgende keer om te draaien, laat zien dat jij het signaleert én dat jij het gaat uitzoeken. Zo voelt de patiënt zich serieus genomen én niet belast met het werk.
~ score = score - 1
-> einde

=== einde ===
Jouw score is: {score}.

->END
