package com.zikyo.steps.runners;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)

@CucumberOptions(
monochrome = true,
        plugin =  {"rerun", "html:target/cucumber","json:target/jsonReports/RegisterTest.json"},
        glue = {
        "com.zikyo"
        },

        features = "src/test/resources/features/register.feature")
public class RegisterRunnerTest {
}
