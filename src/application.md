---
title: "Swiped"
subtitle: "Projekt Antrag"
author: [Erik Berreßem]
lang: de
...

## Thema

Entwicklung einer Webanwendung zum anonymisierten matchen von Filmen und Serien in Gruppen von Benutzern.

## Termin

Beginn: 20.03.2021  
Ende: 30.04.2021

## Projektbeschreibung

Der Schwerpunkt meines Ausbildungsbetriebes der "inSynergie GmbH" umfasst das Entwickeln von kundenorientierten Webanwendungen für Museen und Ausstellungen jeglicher Art. Daher habe ich während meiner Zeit in der Ausbildung einige Erfahrungen in der Frontend- und Backend Webentwicklung machen können, die ich in diesem Projekt einsetzen möchte.

Mein Projekt soll ein Problem lösen, dass ich selbst habe und welches ich auch bei anderen beobachtet habe. Die Problemstellung ist wie folgt:

Eines der zeitintensivsten Gespräche, die man mit seiner Lebensgefährtin bzw. Lebensgefährten haben kann ist wohl die Frage "Welchen Film wollen wir uns heute anschauen?".

Warum gibt es also keine Anwendung mit der man selber Filme und Serien positiv bzw. negativ bewerten kann und folgend Übereinstimmungen erhält, die auf dem basieren, was die meisten Zustimmungen erhalten hat. Von der Funktion, ähnlich wie eine Dating-App. Dieses Problem soll meine Anwendung lösen.

Beim Erstellen eines Benutzerkontos wird der Anwender als Erstes vor eine Auswahl an beliebten Filmen und Serien gestellt, in der Daten über seine Vorlieben gesammelt werden (z.B.: Genre, Schauspieler, Regisseur).

Danach wird der Anwender die Möglichkeit haben mehrere Gruppen zu erstellen, für die Film-Übereinstimmungen gefunden werden sollen. In diese kann er dann anderen Benutzer, zum Beispiel Freunde oder Familienmitglieder einladen. Der Anwender wird eine Liste an Empfehlungen erhalten, die er entweder positiv oder negativ bewerten soll. Sobald mindestens zwei Benutzer in einer Gruppe den selben Film mögen entsteht eine Übereinstimmung. Je mehr Benutzer einen Film mögen, desto höher steigt die "Beliebtheit" des Films in der jeweiligen Gruppe. Diesen Vorgang nennt man "swipen".

Beim "swipen" erhält der Anwender, nach dem Tinder-Prinzip, Karten (Empfehlungen) die er entweder mit nach rechts ziehen (positiv) oder nach links ziehen (negativ) bewerten kann. Dies geschieht für die Benutzer anonymisiert. Auf diesen Karten wird man zusätzlich viele Informationen zum Film finden (z.B.: Rating, Streaming-Services, Trailer). Die Liste der zu "swipenden" Filme wird sich aus folgenden Kriterien zusammensetzen: Empfehlungen basierend auf zuvor positiv bewerteten Filmen des Anwenders und Filme die von Mitgliedern einer Gruppe als positiv bewertet wurden.

## Projektumfeld

Das Projekt wird von mir alleine und selbständig durchgeführt.

Im Projekt inbegriffen sind

- das Konzipieren und Umsetzen einer Benutzeroberfläche für die Webanwendung
- das Konzipieren und Umsetzen eines Matching-Algorithmus
- das Konzipieren und Umsetzen eines Empfehlungs-Algorithmus

Im Rahmen dieses Projektes werde ich nicht die Benutzer Authentifizierung umsetzten, da dies den Rahmen des Projektes sprengen würde.

Ich werde für dieses Projekt Technologien verwenden, die ich auch schon in meiner Firma verwende. So werde ich zum Beispiel für das gesamte Projekt die Programmiersprache TypeScript und den MERN-Stack verwenden.

MERN steht für MongoDB, Express, React und NodeJS, welche die vier Schlüsseltechnologien bilden, aus denen sich der Stack zusammensetzt.

Das backend wird also Node als Laufzeitumgebung, MongoDB als Datenbank und Express (im zusammenspiel mit Apollo-Server) als GraphQL API-Schnittstelle verwenden. Zusätzlich werde ich noch weitere technologien, wie zum Beispiel Mongoose als Datenbank-Adapter, einsetzen.

Im frontend wird React als frontend Framework, Material-UI als UI Framework und Webpack als bundler verwendet. Hierfür setze ich ein starter Projekt namens "Create-React-App" ein, welches ich für meine Zwecke modifizieren werde.

Das frontend wird über die GraphQL API-Schnittstelle mit dem backend, und somit der Datenbank und ausgelagerten methoden, kommunizieren.

Für das deployment des Projektes werde ich Docker Container einsetzen und diese auf meinen eigens gemieteten Server hosten.

Für die benötigten Daten über Filme und Serien wird die öffentlich zugängliche API-Schnittstelle von The Movie Database (TMDb) verwendet.

Ich werde meine Familie, Freunde, Kollegen und meinen Ausbilder bei der inSynergie GmbH zu zwecken der Qualitätssicherung einbinden.

## Projektphasen

### 6h: Planung
- 6h: Erstellen einer Soll-Analyse

### 49h: Implementierung
- 27h: Erstellen einer Benutzeroberfläche
  - 6h: Erstellen einer "Swiping Game" Seite
  - 2h: Erstellen einer "Film Details" Seite
  - 2h: Erstellen einer "Gruppen Übersicht" Seite
  - 4h: Erstellen einer "Gruppe" Seite
  - 2h: Erstellen einer "Benutzerprofil" Seite
  - 2h: Erstellen einer "Login" Seite
  - 2h: Erstellen einer "Registrieren" Seite
  - 4h: Erstellen einer "Neuer Benutzer" Seite
  - 4h: Anbinden an das backend
- 18h: Erstellen eines Backend
  - 4h: Erstellen eines MongoDB Datenbank schemas
  - 6h: Erstellen einer GraphQL API-Schnittstelle
  - 4h: Erstellen einer Benutzerauthentifizierung
  - 2h: Erstellen eines matching Algorithmus
  - 2h: Erstellen eines empfehlungs Algorithmus
- 4h: Docker deployment

### 14h: Dokumentation
- 7h: Erstellen einer Entwickler Dokumentation
- 7h: Erstellen einer Präsentation

Gesamt: 69h

## Dokumentation

Entwickler Dokumentation
Präsentation

## Anlagen

keine

## Präsentationsmittel

Laptop, Beamer und Smartphone