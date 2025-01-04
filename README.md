# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations. The original code lacks comprehensive error handling when making network requests.  The solution provides improved error handling to prevent app crashes and provide better user feedback.

## Bug
The `bug.dart` file shows code that makes a network request but only prints a generic error message.  It doesn't handle different types of errors or retry mechanisms, leading to a poor user experience.

## Solution
The `bugSolution.dart` file offers a more robust solution. It handles specific HTTP status codes, provides more informative error messages, and considers retrying the request after a delay to improve reliability.