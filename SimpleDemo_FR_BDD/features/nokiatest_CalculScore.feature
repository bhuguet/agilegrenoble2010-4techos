# language: en
# encoding: UTF-8

Feature:
  Afin de fournir le score total � l'utilisateur
  En tant que d�veloppeur
  Je veux savoir calculer le score total pour un passage de test

  Scenario Outline: Calcul du score total pour les r�ponses de base
    Given les reponses "<reponse1>", "<reponse2>", "<reponse3>", "<reponse4>", "<reponse5>", "<reponse6>", "<reponse7>", "<reponse8>", "<reponse9>"
    When je calcule le score total
    Then le score total devrait etre <score>

  Examples:
    | reponse1      | reponse2    | reponse3          | reponse4                             | reponse5                                                               | reponse6             | reponse7                                          | reponse8                                | reponse9                         | score |
    | No iterations | Unit tested | Poor user stories | Product Owner not involved with team | Product Owner has burndown release with release date based on velocity | Estimate error < 10% | Burndown chart only burns down when story is done | Noone disrupting team, only Scrum roles | Team is in hyperproductive state | 64    |


  Scenario Outline: Le score des questions additionnelles s'ajoute au score de base
    Given un score de base de 54
    And les options <question 7a>, <question 7b>
    When je calcule le score total
    Then le score total devrait �tre <score>

  Examples:
    | question 7a                          | question 7b                                                     | score |
    | In addition, Team knows its velocity | N.A.                                                            | 58    |
    | N.A.                                 | N.A.                                                            | 54    |
    | N.A.                                 | In addition, Product Owner Release plan based on known velocity | 60    |

    