Feature:
  Afin de disposer d'une trace local de mon passage du test Nokia 
  En tant qu'utilisateur
  je veux recevoir un mail r�capitulatif

  Scenario: Je demande l'envoi du r�capitulatif sur mon mail
    Given je suis sur la page r�capitulatif
    When je fournis mon adresse mail test.nokia@agilegrenoble.fr
    And je clique sur le bouton "Envoyer par mail"
    Then je devrais voir la confirmation de l'envoi du mail


  Scenario Outline: Les adresses mail mal format�es sont rejet�es
    Given je suis sur la page r�capitulatif
    When je fournis mon adresse mail <email>
    Then je devrais �tre averti que mon adresse n'est pas bien format�e
    And le bouton "Envoyer par mail" devrait rester inactif
  Examples:
    | email | 
    | test nokia@agilegrenoble.fr | # adresse avec un espace
    | test.nokia.agilegrenoble.fr | # adresse sans arrobase


 Scenario: Je r�ceptionne bien le mail r�capitulatif
    Given j'ai demand� l'envoi de mon r�capitulatif
    And ma bo�te mail est vide
    When je consulte ma bo�te mail
    Then ma bo�te mail devrait contenir un mail intitul� "R�capitulatif de votre test Nokia"

