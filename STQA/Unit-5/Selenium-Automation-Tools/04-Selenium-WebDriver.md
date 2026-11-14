# F. Selenium WebDriver



Extremely High PYQ Priority

6 Marks



Selenium WebDriver is one of the most frequently repeated questions in your PYQs. The exact question appeared in all four examination sessions.

## PYQ Analysis

| Question                    | Examination | Marks |
| --------------------------- | ----------- | ----- |
| Explain Selenium WebDriver. | Nov 2022    | 6     |
| Explain Selenium WebDriver. | May 2023    | 6     |
| Explain Selenium WebDriver. | Nov 2024    | 6     |
| Explain Selenium WebDriver. | May 2025    | 6     |

Prepare one comprehensive answer covering definition, features, architecture, working, commands, advantages and limitations.

## 1. What is Selenium WebDriver?

Selenium WebDriver is an open-source automation tool used to automate web browsers and test web applications.

It allows testers to interact with web elements such as buttons, text boxes, links, dropdowns and forms using programming languages like Java, Python, C# and JavaScript.

Unlike Selenium IDE, WebDriver does not depend on record-and-playback functionality. It allows testers to write and execute automation scripts programmatically.

## 2. Features of Selenium WebDriver

1. Open Source: Freely available without licensing fees.
2. Multiple Language Support: Supports Java, Python, C#, JavaScript and other languages.
3. Cross-Browser Testing: Supports Chrome, Firefox, Edge and Safari.
4. Cross-Platform Support: Works on Windows, Linux and macOS.
5. Dynamic Web Elements: Can interact with dynamic web elements.
6. Parallel Testing: Can work with Selenium Grid for parallel execution.
7. Framework Integration: Integrates with TestNG, JUnit, Maven and Jenkins.
8. Direct Browser Control: Controls browsers through browser-specific drivers and supported browser automation interfaces.

## 3. Architecture of Selenium WebDriver

[What’s New in Selenium 4: Essential Feature Highlights](https://images.openai.com/static-rsc-4/LuPaZsgeGRpV_03kk6c9dPoHJ8KS3-Xr-6pLKYJGR1XJoqjfdal7d0wtUtaroSCyBg0FndpXI0appD9A_ILBEMnuglRR-tr5mu_tT7ZXUJVeFCdPi3jdVCwOnlKMXy1juFTLFF9F5NjdXJBssRaHy7qQ_6_zT9sfEW-e7-UndrM?purpose=inline)

[linkedin.com](https://www.linkedin.com/pulse/whats-new-selenium-4-essential-feature-highlights-vin%C3%ADcius-eduardo-dh8re?utm_source=chatgpt.com)

The Selenium WebDriver architecture consists of the following components:

1\. Test Script

- Contains automation instructions written in a programming language.
- Example: Java, Python or C#.

2\. Selenium Client Library

- Provides programming language-specific APIs.
- Converts test instructions into WebDriver commands.

3\. W3C WebDriver Protocol

- Defines standard communication between the WebDriver client and browser driver.
- Transfers browser automation commands and responses.

4\. Browser Driver

- Acts as an intermediary between Selenium and the browser.
- Examples: ChromeDriver and GeckoDriver.

5\. Web Browser

- Performs the requested actions.
- Examples: Chrome, Firefox, Edge and Safari.

## 4. Working of Selenium WebDriver

1. The tester writes an automation script using Java, Python or another supported language.
2. The Selenium client library processes the commands.
3. Commands are sent through the WebDriver protocol.
4. The browser driver receives and processes the commands.
5. The browser performs the required actions.
6. The execution response is returned to the test script.

Example: When a script commands Selenium to click a login button, WebDriver sends the command to the browser driver, which performs the click in the browser.

## 5. Common Selenium WebDriver Commands

| Command           | Purpose                    |
| ----------------- | -------------------------- |
| `get()`           | Opens a website            |
| `findElement()`   | Locates a web element      |
| `sendKeys()`      | Enters text into a field   |
| `click()`         | Clicks an element          |
| `getTitle()`      | Returns the page title     |
| `getCurrentUrl()` | Returns the current URL    |
| `clear()`         | Clears a text field        |
| `quit()`          | Closes all browser windows |

### Example using Java

```
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class LoginTest {
    public static void main(String[] args) {

        WebDriver driver = new ChromeDriver();

        driver.get("https://example.com/login");

        driver.findElement(By.id("username"))
              .sendKeys("admin");

        driver.findElement(By.id("password"))
              .sendKeys("admin123");

        driver.findElement(By.id("loginButton"))
              .click();

        driver.quit();
    }
}
```

Explanation:

- `get()` opens the login page.
- `findElement()` identifies the required elements.
- `sendKeys()` enters username and password.
- `click()` clicks the login button.
- `quit()` closes the browser session.

## 6. Advantages of Selenium WebDriver

1. Free and open-source tool.
2. Supports multiple programming languages.
3. Supports different browsers and operating systems.
4. Suitable for automating complex web applications.
5. Supports integration with testing frameworks.
6. Enables parallel testing through Selenium Grid.
7. Reduces repetitive manual testing effort.

## 7. Limitations of Selenium WebDriver

1. Primarily supports web application testing, not desktop application automation.
2. Requires programming knowledge.
3. Does not provide built-in test reporting and test management comparable to dedicated testing frameworks.
4. CAPTCHA and OTP-based authentication cannot generally be automated reliably.
5. Requires maintenance when application elements or locators change.

## 8. Conclusion

Selenium WebDriver is a powerful open-source tool for automating web application testing. It supports multiple programming languages, browsers and operating systems. Its ability to interact directly with browsers makes it widely used for functional, regression and cross-browser testing.

## Quick Revision

Remember the architecture sequence

Test Script

Selenium Client Library

W3C WebDriver Protocol

Browser Driver

Web Browser

| Important point   | Answer                       |
| ----------------- | ---------------------------- |
| Type              | Browser automation tool      |
| Protocol          | W3C WebDriver                |
| Browser drivers   | ChromeDriver, GeckoDriver    |
| Languages         | Java, Python, C#, JavaScript |
| Main purpose      | Web application testing      |
| Common frameworks | TestNG, JUnit                |

Exam tip

For 6 marks, prioritize:

- Definition and features.
- Labelled architecture diagram.
- Working steps.
- Advantages and limitations.

Since this question appeared four times, make sure you can draw and explain the architecture without looking at your notes.