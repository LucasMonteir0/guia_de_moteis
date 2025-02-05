import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guia_de_moteis/app.dart';
import 'package:guia_de_moteis/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: App()));
}
