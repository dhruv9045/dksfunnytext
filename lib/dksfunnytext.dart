library dksfunnytext;

import 'package:dksfunnytext/const_emojies.dart';
import 'package:flutter/material.dart';

class DksFunnyText extends StatefulWidget {
  // Required text to be converted into emojis or displayed as simple text.
  final String text;

  // Optional parameter to specify whether to replace some characters with emojis.
  final bool? replaceSome;

  // Optional parameter to specify the locale for the text.
  final Locale? locale;

  // Optional parameter to specify the maximum number of lines for the text.
  final int? maxLines;

  // Optional parameter to specify the text overflow behavior.
  final TextOverflow? overflow;

  // Optional parameter to enable or disable soft wrapping of text.
  final bool? softWrap;

  // Optional parameter to specify the color for text selection.
  final Color? selectionColor;

  // Optional parameter to provide a semantics label for accessibility.
  final String? semanticsLabel;

  // Optional parameter to specify the strut style for the text.
  final StrutStyle? strutStyle;

  // Optional parameter to specify the text alignment.
  final TextAlign? textAlign;

  // Optional parameter to specify the text direction.
  final TextDirection? textDirection;

  // Optional parameter to specify the text height behavior.
  final TextHeightBehavior? textHeightBehavior;

  // Optional parameter to specify the text scale factor.
  final double? textScaleFactor;

  // Optional parameter to specify the text width basis.
  final TextWidthBasis? textWidthBasis;

  // Optional parameter to specify the text style for the text.
  final TextStyle? style;

  // Optional parameter to provide a custom emoji map to replace characters.
  final Map<String, dynamic>? emoji;

  // Optional parameter to indicate whether to treat the text as simple text or not.
  final bool? simpleText;

  const DksFunnyText(
      {super.key,
      required this.text,
      this.replaceSome = false,
      this.style,
      this.locale,
      this.maxLines,
      this.overflow,
      this.softWrap,
      this.selectionColor,
      this.semanticsLabel,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.textHeightBehavior,
      this.textScaleFactor,
      this.textWidthBasis,
      this.emoji,
      this.simpleText = false});

  @override
  State<DksFunnyText> createState() => _DksFunnyTextState();
}

class _DksFunnyTextState extends State<DksFunnyText> {
  // Default emoji map containing characters and their corresponding emojis.
  Map<String, dynamic> defaultEmoji = emojis;
  // List to store the results after converting text to emojis.
  List<String> results = [];
  @override
  void initState() {
    if (widget.simpleText == false) {
      // Check if custom emojis are provided and update the default emoji map.
      if (widget.replaceSome == true && widget.emoji != null) {
        widget.emoji!.forEach((key, value) {
          if (defaultEmoji.containsKey(key)) {
            defaultEmoji[key] = value;
          }
        });
      } else {
        // Use the provided custom emoji map or keep the default emoji map.
        widget.emoji != null ? defaultEmoji = widget.emoji! : null;
      }
      // Split the text into words and convert each word into emojis.
      List<String> keys = widget.text.split(" ");
      for (String key in keys) {
        String result = '';
        for (int i = 0; i < key.length - 1; i++) {
          result += '${defaultEmoji[key[i]]}';
          if (i == key.length - 2) {
            result += '${defaultEmoji[key[i + 1]]}';
          }
        }
        results.add(result);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Return the Text widget with the specified properties and converted text (if applicable).
    return Text(
      // Apply the provided properties for the Text widget.
      locale: widget.locale,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      selectionColor: widget.selectionColor,
      semanticsLabel: widget.semanticsLabel,
      softWrap: widget.softWrap,
      strutStyle: widget.strutStyle,
      textAlign: widget.textAlign,
      textDirection: widget.textDirection,
      textHeightBehavior: widget.textHeightBehavior,
      textScaleFactor: widget.textScaleFactor,
      textWidthBasis: widget.textWidthBasis,
      widget.simpleText == true
          ? widget.text // Display simple text if simpleText is true.
          : results // Otherwise, display converted text with emojis.
              .toString()
              .replaceFirst('[', "")
              .replaceFirst(']', "")
              .replaceAll(",", " ")
              .toString(),
      style: widget.style,
    );
  }
}
