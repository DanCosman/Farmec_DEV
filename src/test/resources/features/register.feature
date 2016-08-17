@screen
Feature: Register

  Scenario: Register Successful
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984+102@gmail.com" into "account-email" with id
    And I type "testare1984+102@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    Then I should see an element with text "Contul meu"



  Scenario: Register without confirm the same address email
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "not the same address" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    Then I should see an element with text "Te rugam sa introduci o adresa de email valida"



  Scenario: Register without confirm the same password
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "notTheSamePass" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    Then I should see an element with text "Parolele trebuie sa fie identice"

  Scenario: Register without confirm last name
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then I should see an element with text "Acest c‚mp este obligatoriu."

  Scenario: Register without confirm first name
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then I should see an element with text "Acest c‚mp este obligatoriu."

  Scenario: Register without confirm birth date
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then  I should see an element with text "Acest c‚mp este obligatoriu."

  Scenario: Register without select gender
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then  I should see an element with text "Acest c‚mp este obligatoriu."


  Scenario: Register without select skin type
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then I should see an element with text "Acest c‚mp este obligatoriu."


  Scenario: Register without select hair type
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then I should see an element with text "Acest c‚mp este obligatoriu."

  Scenario: Register without select label with text
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I type into captcha field
    And I click on button with text "Œnregistreaza-te"
    And I should see an element with text "Contul meu"
    Then I should see an element with text "Te rugam sa confirmi ca ai luat la cuno?tin?a "


  Scenario: Register without complete captcha field
    Given I open url"https://dev2.farmec.ro/cont-nou.html"
    And I type "testare1984@gmail.com" into "account-email" with id
    And I type "testare1984@gmail.com" into "confirm-email" with id
    And I type "parola" into "account-password" with id
    And I type "parola" into "confirm-password" with id
    And I type "Pop" into "last-name" with id
    And I type "Ionnut" into "first-name" with id
    And I complete birthdate
    And I select gender from the drop-down
    And I select skin-type
    And I select hair-type
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on button with text "Œnregistreaza-te"
    Then I should see an element with text "Acest c‚mp este obligatoriu."