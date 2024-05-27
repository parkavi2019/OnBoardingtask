using OpenQA.Selenium;
using ProjectMars.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectMars.Pages
{
    public class SignInPage : CommonDriver
    {
        private IWebElement signInButton => driver.FindElement(By.XPath("//*[@id=\"home\"]/div/div/div[1]/div/a"));
        private IWebElement emailAddressTextBox => driver.FindElement(By.Name("email"));
        private IWebElement passwordTextBox => driver.FindElement(By.Name("password"));
        private IWebElement loginButton => driver.FindElement(By.XPath("//button[contains(text(),'Login')]"));

        public void SignInSteps()
        {
            driver.Navigate().GoToUrl("http://localhost:5000/");
            driver.Manage().Window.Maximize();
            signInButton.Click();
            Thread.Sleep(1000);
            emailAddressTextBox.SendKeys("manjujayanthi03@gmail.com");
            passwordTextBox.SendKeys("manju@rajesh03");

            loginButton.Click();
            Thread.Sleep(3000);
        }
    }
}

