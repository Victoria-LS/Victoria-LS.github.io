import 'package:flutter/material.dart';

abstract class AppBarText {
  static const TextStyle titles = TextStyle(fontFamily: 'Klavika Bold'
      // color:
      );
}

abstract class HeaderOneText {
  static const TextStyle header = TextStyle(
    fontFamily: 'Klavika Bold',
    color: Color.fromRGBO(2, 66, 115, 1),
    fontSize: 32,
  );
}

abstract class HeaderTwoText {
  static const TextStyle header = TextStyle(
    fontFamily: 'Klavika Bold',
    color: Color(0xff2024273),
    fontSize: 24,
  );
  static const TextStyle headerLight = TextStyle(
    fontFamily: 'Klavika',
    color: Color(0xFF2A94D4),
    fontSize: 24,
  );
}

abstract class SubheadingText {
  static const TextStyle subheader = TextStyle(
    fontFamily: 'Klavika',
    color: Color(0xFF414141),
    fontSize: 18,
  );
  static const TextStyle subheaderLight = TextStyle(
    fontFamily: 'Klavika',
    color: Color(0xFFEEEEEE),
    fontSize: 18,
  );
}

abstract class BasicText {
  static const TextStyle basicLight = TextStyle(
    fontFamily: 'Museo Sans',
    color: Color(0xFFEEEEEE),
  );
  static const TextStyle basicDark = TextStyle(
    fontFamily: 'Museo Sans',
    color: Color(0xFF707070),
  );
}

abstract class LinkText {
  static const TextStyle link = TextStyle(
    fontFamily: 'Museo Sans',
    decoration: TextDecoration.underline,
    color: Color(0xFF024273),
  );
}

abstract class ClickedLinkText {
  static const TextStyle link = TextStyle(
    fontFamily: 'Museo Sans',
    decoration: TextDecoration.underline,
    color: Color.fromARGB(255, 3, 42, 127),
  );
}

abstract class HoverLinkText {
  static const TextStyle link = TextStyle(
    fontFamily: 'Museo Sans',
    decoration: TextDecoration.underline,
    color: Color.fromARGB(255, 119, 219, 255),
  );
}

abstract class CaptionText {
  static const TextStyle caption = TextStyle(
    fontFamily: 'Museo Sans',
    color: Color(0xFF707070),
    fontSize: 8,
  );
}

abstract class IconText {
  static const TextStyle icon = TextStyle(
    fontFamily: 'Museo Sans',
    fontSize: 10,
  );
}
