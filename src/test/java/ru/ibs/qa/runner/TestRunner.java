package ru.ibs.qa.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        tags = "@all",
        glue = "ru/ibs/qa/steps",
        features = "src/test/resources/features",
        plugin = {"io.qameta.allure.cucumber5jvm.AllureCucumber5Jvm", "pretty"}
)
public class TestRunner {
}
