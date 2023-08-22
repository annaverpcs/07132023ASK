package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class QuangStepDefs {
    @Given("QT navigate to URL {string}")
    public void qtNavigateToURL(String URL) {
        // getDriver().get("https://www.google.com/");
        switch (URL) {
            case "Google" -> getDriver().get("https://www.google.com/");
            case "Portnov School" -> getDriver().get("https://www.portnov.com");
            case "Yahoo" -> getDriver().get("https://www.yahoo.com");
            default -> System.out.println("No URL found");
        }
    }

    @Then("QT get page information")
    public void qtGetPageInformation() {
        System.out.println("The page title is " + getDriver().getTitle());
        System.out.println("The page URL is " + getDriver().getCurrentUrl());
        System.out.println("Window handle is " + getDriver().getWindowHandles());
    }

    @Then("QT type {string} into the search bar")
    public void qtTypeIntoTheSearchBar(String keyword) {
        getDriver().findElement(By.xpath("//*[@name='q'])")).sendKeys(keyword);
    }
}