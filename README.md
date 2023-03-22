<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This Package can convert the text in emoji you can use this in your app.

## Features

* This can convert your simple text into emoji. You can also customize this according to your emoji set.

## Getting started

Example: Add the module to your project pubspec.yaml:
```dart
... 
  dependencies:
  ...
    dksfunnytext: ^0.0.1
...
```
And install it using flutter packages get on your project folder. After that, just import the module and use it:
```dart
import 'package:dksfunnytext/dksfunnytext.dart';
```
## Usage

# Simple text(bool) simpleText = true
```dart
  DksFunnyText(
          simpleText: true,
          replaceSome: true,
        
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
 ```
 ![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/simple%20text.png)


# Text-Emoji(bool) simpleText = false
```dart
  DksFunnyText(
          simpleText: false,
          replaceSome: true,
       
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
```
![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/text%20to%20emoji.png)


# Default emoji(bool) replaceSome = false
```dart
  DksFunnyText(
          simpleText: false,
          replaceSome: false,
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
 ```

# Customize emoji(bool) replaceSome = true
 Note: If replaseSome is true then emoji Map<String,dynamic> required other wise it pick up default emojies.
```dart
  Map<String, dynamic> emoji = {"A": '😇', "C": '😄'};

  DksFunnyText(
          simpleText: false,
          replaceSome: true,
          emoji: emoji,
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
```
 


