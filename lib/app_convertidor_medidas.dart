/*
Clase Principal de Entrada de Aplicacion
*/

import 'package:convertidor_medidas/theme/app_theme.dart';
import 'package:flutter/material.dart';

// Importamos Rutas de la Aplicacion para Navegacion
import 'package:convertidor_medidas/routes/app_routes.dart';
// IMportamos Pantallas para llamadas
import 'package:convertidor_medidas/ui/screens/screens.dart';

class AppConvertidorMedidas extends StatelessWidget {
  const AppConvertidorMedidas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitamos bandera Debug
      debugShowCheckedModeBanner: false,
      // Configuramos el tema con el personalizado
      theme: AppTheme.miTema,
      // La pantalla Inicial sera Inicio
      home: Inicio(),
      // Cargamos las rutas de navegacion
      routes: AppRoutes.rutas
    );
  }
}
