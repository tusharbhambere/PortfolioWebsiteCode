import 'package:flutter/material.dart';
import 'package:mysite/app/core/app_theme.dart';
import 'package:mysite/app/core/connection/bloc/connected_bloc.dart';
import 'package:mysite/app/core/connection/network_check.dart';
import 'package:mysite/app/core/cubit/theme_cubit.dart';
import 'package:mysite/app/core/providers/drawer_provider.dart';
import 'package:mysite/app/core/providers/scroll_provider.dart';

import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyWebsite(),
  );
}

class MyWebsite extends StatelessWidget {
  const MyWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<ConnectedBloc>(
          create: (context) => ConnectedBloc(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => DrawerProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ScrollProvider(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Sizer(
              builder: (context, orientation, deviceType) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Ashwini Gupta',
                  theme: AppTheme.themeData(
                    state.isDarkThemeOn,
                    context,
                  ),
                  initialRoute: '/',
                  routes: {
                    '/': (context) => const NChecking(),
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
