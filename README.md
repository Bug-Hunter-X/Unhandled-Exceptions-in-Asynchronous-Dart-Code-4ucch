# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: neglecting to handle exceptions during asynchronous operations. The `bug.dart` file contains code that fetches data from a remote API but lacks proper error handling.  The `bugSolution.dart` file provides a corrected version with improved error handling.

## Bug Description
The original code only prints the error to the console. This is inadequate for production applications; a more robust solution is needed to handle various error scenarios and prevent app crashes.