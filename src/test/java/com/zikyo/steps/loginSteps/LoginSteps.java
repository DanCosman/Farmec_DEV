package com.zikyo.steps.loginSteps;

import com.sdl.selenium.web.WebLocator;
import com.zikyo.utils.Farmec.LoginPage;
import cucumber.api.java.en.When;

import static com.sdl.selenium.utils.config.WebDriverConfig.getDriver;

/**
 * Created by Sica-sama on 7/20/2016.
 */
public class LoginSteps {
    LoginPage loginPage = new LoginPage();

    @When("^I login with \"([^\"]*)\"/\"([^\"]*)\"$")
    public void iLoginWith(String email, String pass) throws Throwable {
        WebLocator elementT = new WebLocator().setText("Utilizator nou");
        if (elementT.isVisible())
        {
            getDriver().navigate().to("https://dev2.farmec.ro/autentificare.html");
            loginPage.doLogin(email, pass);
        }
        else {
            getDriver().navigate().to("https://dev2.farmec.ro/autentificare.html?action=logout");
            getDriver().navigate().to("https://dev2.farmec.ro/autentificare.html");
            loginPage.doLogin(email, pass);
        }
    }
}
