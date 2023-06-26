import 'package:flutter/material.dart';
import 'package:mysite/app/core/app_constant.dart';
import 'package:mysite/app/core/space.dart';
import 'package:mysite/app/core/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width / 8,
      ),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nProjects',
          ),
          Space.y(
            1.w,
          )!,
          const CustomSectionSubHeading(
            text: AppContent.protfolioSubHeading,
          ),
          Space.y(
            2.w,
          )!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: projectUtils
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                    project: e.value,
                  ),
                )
                .toList(),
          ),
          Space.y(
            3.w,
          )!,
          OutlinedButton(
            onPressed: () => AppConstant.openURL(
              SocialMediaLinks.gitHub,
            ),
            child: const Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: Text(
                'See More',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
