Feature: User logins in with Facebook
  As a user
  In order to make it easier to login
  I would like to login in with facebook

  Background:
    Given the following story exists
      | title    | author          | intro                                                                                    |
      | Starship | Mariza & Alfred | Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship |

    And the following chapters exists
      | parent_chapter        | title                 | content                                                   |
      |                       | The story begins      | There is a huge asteroid coming your way, what do you do? |
      | The story begins      | Shoot it with a laser | Now a monster emerges from inside the asteroid, wyd?      |
      | The story begins      | Hide                  | The asteroid hits the starship, wyd?                      |
      | Shoot it with a laser | Talk                  | The monster says it wants to kill you, wyd?               |
      | Shoot it with a laser | Throw a grenade       | The monster explodes, the whole room is now messy, wyd?   |
      | Shoot it with a laser | Run                   | The monster runs after you. Go right or left?             |
      | Run                   | Right                 | The monster got stuck and you got away. The end           |


  Scenario: User logins in successfully with facebook
    Given I visit the landing page
    And I click "Login with Facebook" button
    Then I should be on the landing page
    And I should see "Successfully authenticated from Facebook account"

  Scenario: User is logged in with Facebook and can choose a story to read
    Given I visit the landing page
    And I click "Login with Facebook" button
    And I click "Take me to the story"
    Then I visit the "Starship" story page
