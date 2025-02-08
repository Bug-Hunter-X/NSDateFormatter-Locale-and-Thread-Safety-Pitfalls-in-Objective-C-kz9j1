# Objective-C NSDateFormatter: Locale and Thread Safety

This repository demonstrates a common problem encountered when using `NSDateFormatter` in Objective-C:  issues related to locale settings and thread safety.  The `dateFormatterBug.m` file shows how not setting the locale explicitly or using a single instance across multiple threads can lead to unexpected date parsing/formatting results or even crashes. The `dateFormatterSolution.m` file provides solutions to mitigate these problems.

## Problem

* **Locale Issues:**  `NSDateFormatter`, if not configured with a specific locale, uses the device's current locale. This can cause date parsing/formatting errors if the input string doesn't conform to that locale's conventions.
* **Thread Safety:**  `NSDateFormatter` is not thread-safe. Concurrent access from multiple threads can corrupt the internal state and cause crashes.

## Solution

The solution involves:

1. Explicitly setting the `locale` property of `NSDateFormatter` to ensure consistent date processing.
2. Creating a new `NSDateFormatter` instance for each thread to avoid thread safety violations.