import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mysite/app/core/app_theme.dart';
import 'package:mysite/app/core/providers/scroll_provider.dart';
import 'package:mysite/app/core/space.dart';
import 'package:mysite/app/core/widgets/color_chage_btn.dart';
import 'package:mysite/app/core/widgets/navbar_actions_button.dart';
import 'package:mysite/app/core/widgets/navbar_logo.dart';
import 'package:provider/provider.dart';

import 'package:mysite/app/core/app.dart';
import 'package:mysite/app/core/app_constant.dart';
import 'package:mysite/app/core/cubit/theme_cubit.dart';
import 'package:mysite/app/core/providers/drawer_provider.dart';
import 'package:mysite/app/core/responsive.dart';
import 'package:mysite/app/core/widgets/arrow_on_top.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';

part 'widgets/body.dart';
part 'widgets/mobile_drawer.dart';
part 'widgets/navbar_desktop.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          120,
        ),
        child: Responsive(
          desktop: NavbarDesktop(),
          mobile: NavBarTablet(),
          tablet: NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: height * 0.2,
                left: -88,
                child: Container(
                  height: height / 3,
                  width: 166,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppConstant.secondaryColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppConstant.primaryColor.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 500,
                      sigmaY: 500,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              if (!state.isDarkThemeOn)
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/imgs/dark_bg.jpg',
                    opacity: const AlwaysStoppedAnimation<double>(
                      0.1,
                    ),
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              const Body(),
              const ArrowOnTop(),
            ],
          );
        },
      ),
    );
  }
}
