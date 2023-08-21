## DksFunnyText

The "DksFunnyText" package allows you to convert your simple text into emojis, making your text more engaging and fun. You can also customize the emojis according to your preferred emoji set.


## Help Maintenance

Maintaining open-source repositories can be challenging, and your support can make a significant difference. If you find this package helpful and would like to show your appreciation, consider buying me a cup of coffee. Your support will help me stay motivated and continue improving this package.
<br>
<a href="https://www.buymeacoffee.com/dksdev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>


## Getting started
To use this package in your project, add the following line to your `pubspec.yaml` file:

```yaml

dependencies:
  
  dksfunnytext: ^0.0.1+4

```
Then, run flutter packages get in your project folder to install the package. Import the module in your Dart code:
```dart
import 'package:dksfunnytext/dksfunnytext.dart';
```
## Usage

# Simple text(bool) simpleText = true

To display simple text without converting it into emojis, set simpleText to true:

```dart
  DksFunnyText(
          simpleText: true,
          replaceSome: true,
        
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
 ```

 <img src="https://raw.githubusercontent.com/dhruv9045/dksfunnytext/main/screenshots/simple%20text.png" alt="How example looks" width="300" height="540">


# Text-Emoji(bool) simpleText = false
To convert your text into emojis, set simpleText to false:

```dart
  DksFunnyText(
          simpleText: false,
          replaceSome: true,
       
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
```
<img src="https://raw.githubusercontent.com/dhruv9045/dksfunnytext/main/screenshots/text%20to%20emoji.png" alt="How example looks" width="300" height="540">


# Default emoji(bool) replaceSome = false
If you don't want to customize emojis and prefer to use the default emojis, set replaceSome to false:
```dart
  DksFunnyText(
          simpleText: false,
          replaceSome: false,
          text: "Flutter DksFunnyText",
          style: TextStyle(color: Colors.red),
        ),
 ```

# Customize emoji(bool) replaceSome = true
If you want to customize the emojis used for specific characters, set replaceSome to true, and provide a Map<String, dynamic> of characters and their corresponding emojis:
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


