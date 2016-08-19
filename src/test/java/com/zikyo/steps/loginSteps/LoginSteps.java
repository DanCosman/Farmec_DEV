package com.zikyo.steps.loginSteps;

import com.sdl.selenium.utils.config.WebDriverConfig;
import com.sdl.selenium.web.WebLocator;
import com.zikyo.utils.Farmec.LoginPage;
import cucumber.api.java.en.When;

/**
 * Created by Sica-sama on 7/20/2016.
 */
public class LoginSteps {
    LoginPage loginPage = new LoginPage();

    @When("^I login with \"([^\"]*)\"/\"([^\"]*)\"$")
    public void iLoginWith(String email, String pass) throws Throwable {
        WebLocator element = new WebLocator().setText("Ionut Pop");
        WebLocator elementT = new WebLocator().setText("Utilizator nou");
        if (elementT.assertReady())
        {
            loginPage.doLogin(email, pass);
        }
        else if (elementT.assertReady()){
            WebDriverConfig.getDriver().navigate().to("https://dev2.farmec.ro/autentificare.html?action=logout");
            loginPage.doLogin(email, pass);
        }
    }
}
