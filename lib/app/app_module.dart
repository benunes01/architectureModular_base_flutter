import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/app_controller.dart';
import 'package:mobile/app/app_widget.dart';
import 'package:mobile/app/pages/home/home_controller.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  @override
  List<Router> get routers => [
    //No caso pode trocar para sua tela inicial (HomePage) em vez de Container
    Router('/', child: (_, args) => Container())
  ];

  @override
  Widget get bootstrap => AppWidget();

}