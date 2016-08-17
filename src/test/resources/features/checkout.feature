@screen
Feature: Checkout



  Scenario: Checkout successful
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Balsam hidratant"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza "
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza"
    And I fill in credit card information


  Scenario: Checkout with cash courier
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Masca regeneranta"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza"
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Ramburs prin curier"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza "
    Then I should see an element with text "Finalizare comanda"


  Scenario: Checkout with paymet order
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Masca regeneranta"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza"
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Ordin de plata"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza"
    Then I should see an element with text "Finalizare comanda"


  Scenario: Checkout without login when the user enter on the web site
    Given I open url"https://dev2.farmec.ro/"
    And  I wait 2 seconds
    And I click on element with text "Produse noi"
    And I click on link with text "Crema corp pentru piele uscata"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza "
    And I login with "testare1984@gmail.com"/"parola"
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza"
    And I fill in credit card information



  Scenario: Checkout with card number wrong
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Balsam hidratant"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza "
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza "
    And I fill in card number "6778", cvc "555", month "05 Mai", year "2020" and card type "Maestro"


  Scenario: Checkout with empty cvc
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Balsam hidratant"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza "
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza "
    And I fill in card number "677899999", cvc "", month "05 Mai", year "2020" and card type "Maestro"






  Scenario: Checkout with wrong year field
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Balsam hidratant"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza "
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza "
    And I fill in card number "677899999", cvc "555", month "05 Mai", year "2015" and card type "Maestro"


  Scenario: Checkout with empty card type field
    Given I open url"https://dev2.farmec.ro/autentificare.html"
    And I login with "testare1984@gmail.com"/"parola"
    And I click on element with text "Produse noi"
    And I click on link with text "Balsam hidratant"
    And I click on link with text "Adauga Ón cos"
    And I click on button with text "Finalizeaza comanda acum "
    And I click on  button2 with text "Finalizeaza "
    And I click on  label "Editeaza" with class
    And I click on link with text "Continuare"
    And I wait 2 seconds
    And I click on link with text "Continuare"
    And I click on label "Online cu card bancar"
    And I click on link with text "Continuare"
    And I click on label "Sunt de acord si am luat la cunostinta "
    And I click on link with text "Finalizeaza "
    And I fill in card number "677899999", cvc "555", month "05 Mai", year "2015" and card type "Maestro"