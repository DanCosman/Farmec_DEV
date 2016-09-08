@screen
  Feature: Register

    Scenario: Register p;lvvnnmczszxdSuccessful
      Given I open url"https://dev2.farmec.ro/cont-nou.html"
      And I open url"https://dev2.farmec.ro/autentificare.html?action=logout"
      And I open url"https://dev2.farmec.ro/cont-nou.html"
      And I type "testare1984+120@gmail.com" into "account-email" with id
      And I type "testare1984+120@gmail.com" into "confirm-email" with id
      And I type "parola" into "account-password" with id
      And I type "parola" into "confirm-password" with id
      And I type "Pop" into "last-name" with id
      And I type "Ionut" into "first-name" with id
      And I complete birthdate
      And I select gender from the drop-down
      And I select skin-type
      And I select hair-type
      And I click on button with text "Am înţeles"
      And I wait 1 seconds
      And I click on label with id "agree-wrapper"
      And I wait 1 seconds
      And I type into captcha field
      And I wait 1 seconds
      And I click on button with text "Înregistrează-te"
      And I wait 1 seconds
      And I open url"https://dev2.farmec.ro/modificare-cont.html"
      And I click on link with text "Şterge cont"
      And I click on label "Doresc să îmi şterg contul Farmec"
      And I click on button with text "Şterge"

    Scenario: Register without confirm the same address email
      And I open url"https://dev2.farmec.ro/autentificare.html?action=logout"
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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      Then I should see an element with text "Te rugăm să introduci o adresă de email validă"

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      Then I should see an element with text "Parolele trebuie să fie identice"

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then I should see an element with text "Acest câmp este obligatoriu."

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then I should see an element with text "Acest câmp este obligatoriu."

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then  I should see an element with text "Acest câmp este obligatoriu."

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then  I should see an element with text "Acest câmp este obligatoriu."

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then I should see an element with text "Acest câmp este obligatoriu."

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
      And I click on label with id "agree-wrapper"
      And I type into captcha field
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then I should see an element with text "Acest câmp este obligatoriu."

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
      And I click on button with text "Înregistrează-te"
      And I should see an element with text "Contul meu"
      Then I should see an element with text "Te rugăm să confirmi că ai luat la cunoștință "

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
      And I click on label with id "agree-wrapper"
      And I click on button with text "Înregistrează-te"
      Then I should see an element with text "Acest câmp este obligatoriu."