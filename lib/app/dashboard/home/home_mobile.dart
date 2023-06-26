import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/app/core/animations/entrance_fader.dart';
import 'package:mysite/app/core/animations/zoom_animation.dart';
import 'package:mysite/app/core/app_constant.dart';
import 'package:mysite/app/core/app_text.dart';
import 'package:mysite/app/core/space.dart';
import 'package:mysite/app/core/widgets/color_chage_btn.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

import 'widgets/animation_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.w,
        top: 10.h,
        right: 10.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppContent.hellotag,
                style: AppText.h3!.copyWith(
                  fontSize: isFontSize(
                    context,
                    16,
                  ),
                ),
              ),
              Image.asset(
                StaticImage.hi,
                height: 10.sp,
              ),
            ],
          ),
          Text(
            AppContent.yourname,
            style: TextStyle(
              fontSize: isFontSize(
                context,
                28,
              ),
              fontWeight: FontWeight.w600,
            ),
          ),
          Space.y(
            1.w,
          )!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "A ",
                style: TextStyle(
                  fontSize: isFontSize(
                    context,
                    18,
                  ),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: mobileList,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),
          Space.y(
            2.w,
          )!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                text: 'Download CV',
                onTap: () {
                  html.window.open(
                    SocialMediaLinks.resume,
                    "pdf",
                  );
                },
              ),
              const EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(
                  seconds: 1,
                ),
                duration: Duration(
                  milliseconds: 800,
                ),
                child: ZoomAnimations(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
