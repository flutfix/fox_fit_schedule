import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fox_fit_schedule/schedule/common/app_bloc_observer.dart';
import 'package:fox_fit_schedule/schedule/common/bloc_list.dart';
import 'package:fox_fit_schedule/schedule/common/service_locator.dart';
import 'package:fox_fit_schedule/schedule/common/theme.dart';
import 'package:fox_fit_schedule/schedule/config/config.dart';
import 'package:fox_fit_schedule/schedule/schedule.dart';
import 'package:logger/logger.dart';

void main() {
  runZonedGuarded<void>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await AppConfig().load();

      WidgetsFlutterBinding.ensureInitialized();

      injectDependencies();

      await SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      );

      Bloc.observer = AppBlocObserver.instance();
      Bloc.transformer = sequential<Object?>();

      runApp(const MyApp());
    },
    (error, stackTrace) {
      sl<Logger>().e('Caught Framework error\nType: ${error.runtimeType}');
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocList.providers,
      child: MaterialApp(
        theme: ThemeData.light().copyWith(extensions: <ThemeExtension<CustomTheme>>[AppTheme.light]),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: const Schedule(),
      ),
    );
  }
}
