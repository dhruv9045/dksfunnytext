library dksfunnytext;

import 'package:dksfunnytext/const_emojies.dart';
import 'package:flutter/material.dart';

class DksFunnyText extends StatefulWidget {
  final String text;
  final bool? replaceSome;
  final Locale? locale;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? selectionColor;
  final String? semanticsLabel;
  final bool? softWrap;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextHeightBehavior? textHeightBehavior;
  final double? textScaleFactor;
  final TextWidthBasis? textWidthBasis;
  final TextStyle? style;
  final Map<String, dynamic>? emoji;
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
  Map<String, dynamic> defaultEmoji = emojis;
  List<String> results = [];
  @override
  void initState() {
    if (widget.simpleText == false) {
      if (widget.replaceSome == true && widget.emoji != null) {
        widget.emoji!.forEach((key, value) {
          if (defaultEmoji.containsKey(key)) {
            defaultEmoji[key] = value;
          }
        });
      } else {
        widget.emoji != null ? defaultEmoji = widget.emoji! : null;
      }
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
    return Text(
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
          ? widget.text
          : results
              .toString()
              .replaceFirst('[', "")
              .replaceFirst(']', "")
              .replaceAll(",", " ")
              .toString(),
      style: widget.style,
    );
  }
}
