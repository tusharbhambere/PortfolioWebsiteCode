import 'package:flutter/material.dart';
import 'package:mysite/app/core/animations/entrance_fader.dart';
import 'package:mysite/app/core/animations/zoom_animation.dart';
import 'package:mysite/app/core/app_constant.dart';
import 'package:mysite/app/core/app_theme.dart';
import 'package:mysite/app/core/space.dart';
import 'package:mysite/app/core/widgets/color_chage_btn.dart';
import 'package:mysite/app/dashboard/home/widgets/animation_text.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10.h,
              ),
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        AppContent.hellotag,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(
                          milliseconds: 800,
                        ),
                        child: Image.asset(
                          StaticImage.hi,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  Space.y(
                    0.5.w,
                  )!,
                  const Text(
                    AppContent.yourname,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "A ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: desktopList,
                      ),
                    ],
                  ),
                  Space.y(
                    1.5.w,
                  )!,
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10.w,
                    ),
                    child: Text(
                      AppContent.miniDescription,
                      style: TextStyle(
                        fontSize: isFontSize(
                          context,
                          20,
                        ),
                        fontWeight: FontWeight.w400,
                        color: theme.textColor.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Space.y(
                    3.w,
                  )!,
                  ColorChageButton(
                    text: 'Download CV',
                    onTap: () {
                      html.window.open(
                        SocialMediaLinks.resume,
                        "pdf",
                      );
                    },
                  ),
                ],
              ),
            ),
            const ZoomAnimations(),
          ],
        ),
      ),
    );
  }
}
