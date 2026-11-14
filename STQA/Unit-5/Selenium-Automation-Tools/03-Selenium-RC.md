# What is Selenium RC (Remote Control)? Explain in Detail.

6 Marks – Exam-ready answer

## 1. What is Selenium RC?

Selenium RC (Remote Control) is an older, open-source Selenium tool used to automate web application testing across different browsers and operating systems.

It allows testers to write automated test scripts in programming languages such as Java, Python, C# and Ruby.

Selenium RC uses a Selenium Server to receive commands from test scripts and control the browser. It uses JavaScript injection to interact with web pages.

It was later replaced by Selenium WebDriver because WebDriver provides more direct and efficient browser automation.

## 2. Architecture of Selenium RC

[Selenium Terms Explained | inetfuture's Blog](https://images.openai.com/static-rsc-4/erngQhBnMh4uRBymh8YZpa9r26mYXDViDMcF7NSTxp7AmSX33kP511WBEZDkR4F2REpYfzEZXfoXn3UlxmAXvROcoTSWAQd_Vt4jSlRouPtr0Y5vodGginSspI5sUfleVeUtP402vK9ZkwJ15FvhdO5Pb8k18GE4kJgmTVKfb1g?purpose=inline)

[inetfuture.github.io](https://inetfuture.github.io/2015/03/18/selenium-terms-explained/?utm_source=chatgpt.com)

The Selenium RC architecture consists of the following components:

1\. Test Script

- Contains automation instructions written in languages such as Java, Python or C#.
- Defines the actions to be performed on the web application.

2\. Client Libraries

- Provide APIs for different programming languages.
- Convert test script instructions into commands understood by Selenium Server.

3\. Selenium RC Server

- Receives commands from the client library.
- Acts as an intermediary between the test script and browser.
- Injects JavaScript into the browser to perform automation.

4\. Browser

- Executes the requested actions on the web application.
- Sends execution results back through the Selenium RC Server.

## 3. Working of Selenium RC

The working process of Selenium RC involves the following steps:

1. Write Test Script: The tester writes an automation script using Java, Python or another supported language.
2. Send Commands: The client library sends commands to the Selenium RC Server.
3. Receive Commands: The Selenium Server receives and processes the commands.
4. JavaScript Injection: The server injects JavaScript into the browser to interact with the web page.
5. Browser Execution: The browser performs the requested actions, such as clicking buttons and entering text.
6. Return Results: The results are sent back to the test script through the server.

## 4. Features of Selenium RC

1. Supports multiple programming languages.
2. Supports multiple web browsers.
3. Supports different operating systems.
4. Allows automated execution of web application test cases.
5. Supports integration with testing frameworks such as JUnit and TestNG.
6. Supports execution of test scripts on remote machines.

## 5. Advantages of Selenium RC

1. Open-source and free to use.
2. Supports multiple programming languages.
3. Supports cross-browser testing.
4. Supports cross-platform testing.
5. Allows reusable automation scripts.
6. Can integrate with different testing frameworks.

## 6. Limitations of Selenium RC

1. Requires a separate Selenium Server.
2. Uses JavaScript injection, which creates certain browser security limitations.
3. Slower and more complex than Selenium WebDriver.
4. Requires programming knowledge.
5. Difficult to maintain for large automation projects.
6. It is deprecated and no longer recommended for new projects.

## 7. Difference Between Selenium RC and Selenium WebDriver

| Selenium RC                | Selenium WebDriver                   |
| -------------------------- | ------------------------------------ |
| Older automation tool      | Modern automation tool               |
| Uses Selenium Server       | Communicates through browser drivers |
| Uses JavaScript injection  | Uses W3C WebDriver protocol          |
| Requires a separate server | Does not require the old RC server   |
| Relatively slower          | Generally more efficient             |
| Deprecated                 | Actively maintained                  |

## 8. Conclusion

Selenium RC is an older web automation testing tool that uses a Selenium Server and JavaScript injection to control browsers. It supports multiple programming languages and browsers. However, due to its limitations, it was replaced by Selenium WebDriver, which provides more direct and efficient browser automation.

## Quick Revision

Selenium RC architecture

Test Script

Java / Python / C#

Client Library

Selenium RC Server

JavaScript Injection

Web Browser

Remember these five keywords for the exam:

- Full form: Remote Control.
- Main component: Selenium RC Server.
- Communication: Client-server architecture.
- Browser control: JavaScript injection.
- Replacement: Selenium WebDriver.

Exam tip: If asked for 6 marks, draw the architecture and explain all four main components and six working steps. The difference between RC and WebDriver is useful additional content.