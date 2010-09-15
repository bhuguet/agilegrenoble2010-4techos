Feature:
  Afin de fournir le score � l'utilisateur
  En tant que d�veloppeur
  Je veux savoir calculer le score pour un passage de test

  Scenario Outline: Calcul du score sans r�ponses additionnelles

    Given les r�ponses <r�ponse1>, <r�ponse2> ...


    When je calcule le score

    Then le score calcul� est <score>


  Examples:
    | r�ponse1      | r�ponse2    | r�ponse3          | r�ponse4                             | r�ponse5                                                               | r�ponse6             | r�ponse7                                          | r�ponse8                                | r�ponse9                         | score |
    | No iterations | Unit tested | Poor user stories | Product Owner not involved with team | Product Owner has burndown release with release date based on velocity | Estimate error < 10% | Burndown chart only burns down when story is done | Noone disrupting team, only Scrum roles | Team is in hyperproductive state | 64    |


  Scenario Outline: Calcul du score avec r�ponses additionnelles

    Given un score sans r�ponses additionnelles de 54

    And les options <question 7a>, <question 7b>

    When je calcule le score

    Then le score calcul� est <score>

  Examples:

    | question 7a                          | question 7b                                                     | score |
    | In addition, Team knows its velocity | N.A.                                                            | 58    |
    | N.A.                                 | N.A.                                                            | 54    |
    | N.A.                                 | In addition, Product Owner Release plan based on known velocity | 60    |

    