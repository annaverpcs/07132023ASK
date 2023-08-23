package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import support.Helper;

import java.sql.SQLException;
import java.io.IOException;
import static support.TestContext.getDriver;

public class ShamnaPStepdefs {
    int iUserID;
    String sActivationcode;

    @Then("SP retrieve information from db for email {string}")
    public void spRetrieveInformationFromDbForEmail(String sEmailAddress) throws SQLException {
        String sAccessToken = Helper.getAccessToken(sEmailAddress);
        String[] sData = sAccessToken.split(";");
        iUserID = Integer.parseInt(sData[0]);
        sActivationcode = sData[1];


        System.out.println("sAccessToken = " + sAccessToken);
        System.out.println("iUserID = " + iUserID);
        System.out.println("sActivationcode " + sActivationcode);

    }

    @Then("SP activate the user")
    public void spActivateTheUser() throws IOException {
        Helper.activateUser(iUserID, sActivationcode);

    }

    @Given("SP open page {string}")
//    public void spOpenPage(String sURL) {
//        getDriver().get("http://ask-int.portnov.com/#/registration");
//    }
    public void spOpenPage(String sURL) {
        getDriver().get(XpathLibrary.sRegistrationURL);
    }


    @Then("SP type {string} to field {string}")
//    public void spTypeToField(String sText, String sLocation) {
//        switch (sLocation) {
//            case "firstName":
//                getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(sText);
//                break;
//            case "lastName":
//                getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(sText);
//                break;
//            case "email":
//                getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(sText);
//                break;
//            case "group":
//                getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(sText);
//                break;
//            case "password":
//                getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(sText);
//                break;
//            case "confirmPassword":
//                getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(sText);
//                break;
//
//        }
//    }
         // second method
    public void spTypeToField(String sText, String sLocation) {
        switch (sLocation) {
            case "firstName":
                getDriver().findElement(By.xpath(XpathLibrary.sFirstNameXpath)).sendKeys(sText);
                break;
            case "lastName":
                getDriver().findElement(By.xpath(XpathLibrary.sLastNameXpath)).sendKeys(sText);
                break;
            case "email":
                getDriver().findElement(By.xpath(XpathLibrary.sEmailXpath)).sendKeys(sText);
                break;
            case "group":
                getDriver().findElement(By.xpath(XpathLibrary.sGroupXpath)).sendKeys(sText);
                break;
            case "password":
                getDriver().findElement(By.xpath(XpathLibrary.sPasswordXpath)).sendKeys(sText);
                break;
            case "confirmPassword":
                getDriver().findElement(By.xpath(XpathLibrary.sConfirmPasswordXpath)).sendKeys(sText);
                break;

        }
    }
    @Then("SP click on button {string}")
//    public void spClickOnButton(String sButton) {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
//    }
    public void spClickOnButton(String sButton) {
        getDriver().findElement(By.xpath(XpathLibrary.sRegisterMeButtonXpath)).click();
    }
}

