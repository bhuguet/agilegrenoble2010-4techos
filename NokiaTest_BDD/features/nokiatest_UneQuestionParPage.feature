Feature:
  Afin de faciliter la saisie du test Nokia
  En tant qu'utilisateur
  je veux r�pondre � une seule question � la fois


  Background:
    Given le test Nokia #9 pages au total

  Scenario Outline: affichage du bouton suivant
    Given je suis sur la page <page courante>
    Then je vois un bouton "Suivant" sur cette page

  Examples:

    | page courante |
    | 1             |
    | 2             |
    | 8             |


  Scenario: affichage du bouton termin�
    Given je suis sur la derni�re page
    Then je vois un bouton "Termin�" sur cette page


  Scenario Outline: le bouton s'affiche uniquement quand une r�ponse est donn�e � la question
    Given je suis sur la <page courante>
    And la r�ponse n'est pas donn�ee
    And le bouton <bouton> n'est pas actif
    When la r�ponse est donn�e
    Then le bouton <bouton> est actif

  Examples:
    | page courante | bouton  |
    | 1             | Suivant |
    | 2             | Suivant |
    | 9             | Termin� |


  Scenario Outline: passage � la question suivante
    Given je suis sur la page <page courante>
    When je clique sur le bouton "Suivant"
    Then je suis sur la page <page suivante>

  Examples:
    | page courante | page suivante |
    | 1             | 2             |
    | 2             | 3             |
    | 8             | 9             |


  Scenario: gestion de la fin du test
    Given je suis sur la derni�re page
    When je clique sur le bouton "Termin�"
    Then je vois une page intitul�e "R�capitulatif"
