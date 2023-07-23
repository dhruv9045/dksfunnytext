## DksFunnyText

The "DksFunnyText" package allows you to convert your simple text into emojis, making your text more engaging and fun. You can also customize the emojis according to your preferred emoji set.


## Help Maintenance

I've been maintaining quite many repos these days and burning out slowly. If you could help me cheer up, buying me a cup of coffee will make my life really happy and get much energy out of it.
<br>
<a href="https://www.buymeacoffee.com/dksdev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>


## Getting started
To use this package in your project, add the following line to your `pubspec.yaml` file:

```yaml

dependencies:
  
  dksfunnytext: ^0.0.1+3

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
 ![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/simple%20text.png)


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
![simple text](https://github.com/dhruv9045/dksfunnytext/blob/main/screenshots/text%20to%20emoji.png)


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


