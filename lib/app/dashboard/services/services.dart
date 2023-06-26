import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mysite/app/core/app_constant.dart';
import 'package:mysite/app/core/app_theme.dart';
import 'package:mysite/app/core/responsive.dart';
import 'package:mysite/app/core/space.dart';
import 'package:mysite/app/core/widgets/custom_text_heading.dart';
import 'package:mysite/app/models/service_model.dart';
import 'package:sizer/sizer.dart';
part 'services_desktop.dart';
part 'services_mobile.dart';
part 'widgets/services_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
