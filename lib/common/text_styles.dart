import 'package:flutter/material.dart';
import 'package:greentick/common/color_constants.dart';

import 'app_constants.dart';

class TextStyles {
  static const double _kH1FontSize = 36;
  static const double _kH2FontSize = 24;
  static const double _kH3FontSize = 18;
  static const double _kH4FontSize = 16;
  static const double _kH5FontSize = 14;
  static const double _kH6FontSize = 12;
  static const double _kH7FontSize = 50;

  static const kTextH1BlackRegular = TextStyle(
    fontSize: _kH1FontSize,
    fontWeight: FontWeight.w500,
    fontFamily: kFontFamily,
    fontStyle: FontStyle.normal,
  );

  static const kTextH2BlackRegular = TextStyle(
    fontSize: _kH2FontSize,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamily,
    fontStyle: FontStyle.normal,
  );
  static const kTextH4BlackRegular = TextStyle(
    fontSize: _kH4FontSize,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamily,
    fontStyle: FontStyle.normal,
  );
  static const kTextH4TextColorBold = TextStyle(
      fontSize: _kH4FontSize,
      fontWeight: FontWeight.w700,
      fontFamily: kFontFamily,
      fontStyle: FontStyle.normal,
      color: kColorText
  );
  static const kTextH4TextColorRegular = TextStyle(
    fontSize: _kH4FontSize,
    fontWeight: FontWeight.w400,
    fontFamily: kFontFamily,
    fontStyle: FontStyle.normal,
    color: kColorText
  );
  static const kTextH5TextColorRegular = TextStyle(
      fontSize: _kH5FontSize,
      fontWeight: FontWeight.w400,
      fontFamily: kFontFamily,
      fontStyle: FontStyle.normal,
      color: kColorText
  );
}