import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mysite/app/core/app_constant.dart';
import 'package:mysite/app/core/app_text.dart';

List<TyperAnimatedText> desktopList = [
  TyperAnimatedText(
    AppContent.animationtxt1,
    speed: const Duration(
      milliseconds: 50,
    ),
    textStyle: AppText.h2!.copyWith(
      fontSize: 32,
    ),
  ),
  TyperAnimatedText(
    AppContent.animationtxt2,
    speed: const Duration(
      milliseconds: 50,
    ),
    textStyle: AppText.h2!.copyWith(
      fontSize: 32,
    ),
  ),
];

List<TyperAnimatedText> tabList = [
  TyperAnimatedText(
    AppContent.animationtxt1,
    speed: const Duration(
      milliseconds: 50,
    ),
    textStyle: AppText.h2!.copyWith(
      fontSize: 20,
    ),
  ),
  TyperAnimatedText(
    AppContent.animationtxt2,
    speed: const Duration(
      milliseconds: 50,
    ),
    textStyle: AppText.h2!.copyWith(
      fontSize: 20,
    ),
  ),
];
List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(
    AppContent.animationtxt1,
    speed: const Duration(
      milliseconds: 50,
    ),
    textStyle: AppText.h2!.copyWith(
      fontSize: 16,
    ),
  ),
  TyperAnimatedText(
    AppContent.animationtxt2,
    speed: const Duration(
      milliseconds: 50,
    ),
    textStyle: AppText.h2!.copyWith(
      fontSize: 16,
    ),
  ),
];
