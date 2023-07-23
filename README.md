## DksFunnyText

This Package can convert your simple text into emoji. You can also customize this according to your emoji set.


## Help Maintenance

I've been maintaining quite many repos these days and burning out slowly. If you could help me cheer up, buying me a cup of coffee will make my life really happy and get much energy out of it.
<br>
<a href="https://www.buymeacoffee.com/dksdev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>


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
 


