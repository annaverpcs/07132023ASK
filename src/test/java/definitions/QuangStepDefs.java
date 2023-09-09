package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuangStepDefs {
    @Given("QT navigate to URL {string}")
    public void qtNavigateToURL(String URL) {
        // getDriver().get("https://www.google.com/");
        switch (URL) {
            case "Google" -> getDriver().get("https://www.google.com/");
            case "Gibiru" -> getDriver().get("https://gibiru.com/");
            case "Excite" -> getDriver().get("https://www.excite.com/");
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

    @Then("QT type {string} into the {string}")
    public void qtTypeIntoThe(String keyword, String searchBar) {
        switch (searchBar) {
            case "Google search bar" -> getDriver().findElement(By.xpath("//*[@name='q']")).sendKeys(keyword);
            case "Gibiru search bar" -> getDriver().findElement(By.xpath("//input[@id='q']")).sendKeys(keyword);
            case "Excite search bar" -> getDriver().findElement(By.xpath("//input[@name='q']")).sendKeys(keyword);
            default -> System.out.println("No search bar found");
        }
    }

    @Then("QT press Enter")
    public void qtPress() {
        getDriver().findElement(By.xpath("//*[@name='q']")).sendKeys(Keys.ENTER);
    }

    @Then("QT I wait for the search results to be present")
    public void qtIWaitForTheSearchResultsToBePresent() {
        new WebDriverWait(getDriver(), Duration.ofSeconds(10)).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id='res']")));
    }

    @Then("QT the search results should contain the word {string}")
    public void qtTheSearchResultsShouldContainTheWord(String word) {
        String actualText = getDriver().findElement(By.xpath("//*[@id='res']")).getText();
        assertThat(actualText).containsIgnoringCase(word);
    }

    @And("QT I make sure that the {string} and {string} status are labeled with the correct colors")
    public void iMakeSureThatThePassedAndFailedStatusAreLabeledWithTheCorrectColors(String passedStatus, String failedStatus) {
        WebElement element = getDriver().findElement(By.xpath("//tbody/tr[2]/td[6]/span[1]"));
        assertThat(element.getCssValue("background-color")).isEqualTo("rgba(0, 128, 0, 0.65)");
        WebElement element2 = getDriver().findElement(By.xpath("//tbody/tr[5]/td[6]/span[1]"));
        assertThat(element2.getCssValue("background-color")).isEqualTo("rgba(244, 67, 54, 0.65)");
    }
}






