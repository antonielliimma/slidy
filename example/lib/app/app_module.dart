import 'package:example/app/bloc1_bloc.dart';
import 'package:example/app/pages/login/components/card/card_bloc.dart';
import 'package:example/app/pages/login/login_bloc.dart';
import 'package:example/app/shared/blocs/auth_bloc.dart';
import 'package:example/app/shared/services/service_service.dart';
import 'package:example/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:example/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => Bloc1Bloc()),
        Bloc((i) => CardBloc()),
        Bloc((i) => CardBloc()),
        Bloc((i) => CardBloc()),
        Bloc((i) => LoginBloc()),
        Bloc((i) => AuthBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => ServiceService()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
