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

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

Example: Add the module to your project pubspec.yaml:

... 
  dependencies:
  ...
    dksfunnytext: ^0.0.1
...

And install it using flutter packages get on your project folder. After that, just import the module and use it:

import 'package:dksfunnytext/dksfunnytext.dart';

# Simple text(bool) True
//...
DksFunnyText(
          simpleText: true,
          replaceSome: true,
        
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
        ![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/simple%20text.png)


# Text-Emoji(bool) simpleText=false
//...
DksFunnyText(
          simpleText: false,
          replaceSome: true,
       
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
        ![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/text%20to%20emoji.png)


# Default emoji(bool) replaceSome=false
//...
DksFunnyText(
          simpleText: false,
          replaceSome: false,
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
        ![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/text%20to%20emoji.png)

# Customize emoji(bool) replaceSome=true
 Note: If replaseSome is true then emoji Map<String,dynamic> required other wise it pick up default emojies.
//...
  Map<String, dynamic> emoji = {"A": '😇', "C": '😄'};
//...
DksFunnyText(
          simpleText: false,
          replaceSome: true,
          emoji: emoji,
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
        ![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/text%20to%20emoji.png)
 


