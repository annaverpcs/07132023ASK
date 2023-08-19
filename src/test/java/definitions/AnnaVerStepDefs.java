package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import support.Helper;
import org.openqa.selenium.By;

import java.sql.SQLException;
import java.io.IOException;
import static support.TestContext.getDriver;

public class AnnaVerStepDefs {
    int iUserID;
    String sActivationCode;

    @Then("AV retrieve information from db for email {string}")
    public void avRetrieveInformationFromDbForEmail(String sEmailAddress) throws SQLException {
        String sAccessToken = Helper.getAccessToken(sEmailAddress);
        String[] sData = sAccessToken.split(";");
        iUserID = Integer.parseInt(sData[0]);
        sActivationCode = sData[1];

        System.out.println("sAccessToken " + sAccessToken);
        System.out.println("iUserID " + iUserID);
        System.out.println("sActivationCode " + sActivationCode);

    }

    @Then("AV activate the user")
    public void avActivateTheUser() throws IOException {
        Helper.activateUser(iUserID,sActivationCode);
    }

    @Given("AV open page {string}")
    public void avOpenPage(String sURL) {
        getDriver().get(XpathLibrary.sRegistrationURL);
    }

    @Then("AV type {string} to field {string}")
    public void avTypeToField(String sText, String sLocation) {
        switch(sLocation){
            case "firstName": getDriver().findElement(By.xpath(XpathLibrary.sFirstNameXpath)).sendKeys(sText);
            break;
            case "lastName": getDriver().findElement(By.xpath(XpathLibrary.sLastNameXpath)).sendKeys(sText);
                break;
            case "email": getDriver().findElement(By.xpath(XpathLibrary.sEmailXpath)).sendKeys(sText);
                break;
            case "group": getDriver().findElement(By.xpath(XpathLibrary.sGroupXpath)).sendKeys(sText);
                break;
            case "password": getDriver().findElement(By.xpath(XpathLibrary.sPasswordXpath)).sendKeys(sText);
                break;
            case "confirmPassword": getDriver().findElement(By.xpath(XpathLibrary.sConfirmPasswordXpath)).sendKeys(sText);
                break;
        }
    }

    @Then("AV click on button {string}")
    public void avClickOnButton(String sButton) {
        getDriver().findElement(By.xpath(XpathLibrary.sRegisterMeButtonXpath)).click();
    }
}
