// CLASE ESTATICA DE RUTAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

import 'package:convertidor_medidas/ui/screens/conversion_longitud.dart';
import 'package:flutter/material.dart';

// Importacion de Pantallas
import 'package:convertidor_medidas/ui/screens/screens.dart';
// Importacion de Modelos
import 'package:convertidor_medidas/models/models.dart';

class AppRoutes{

  // Definicion estatica de ruta inicial
  // uso initialRoute: AppRoutes.rutaInicial
  static const rutaInicial = '/home';

  // Definicion estatica de Mapa de Rutas
  // uso onGenerateRoute: AppRoutes.rutas
  static Map<String, Widget Function (BuildContext)> rutas = {
    '/Inicio'             : (BuildContext contest) => const Inicio(),
    '/ConversionLongitud' : (BuildContext contest) => const ConversionLongitud(),
    '/ConversionPesos' : (BuildContext contest) => const ConversionPesos(),
  };

  // Definicion estatica de OnGenerateRoute
  // uso onGenerateRoute: AppRoutes.rutaInexistente
  static Route<dynamic> rutaInexistente (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Inicio (),
    );
  }

  // Definicion de Menu como objeto con Ruta
  static final menuOpciones = <MenuOpcion>[
    MenuOpcion(
      ruta: '/ConversionLongitud',
      nombre: 'Conversion de Longitudes',
      pantalla: const ConversionLongitud(),
      icono: Icons.location_on,
    ),
    MenuOpcion(
      ruta: '/ConversionPesos',
      nombre: 'Conversion de Pesos',
      pantalla: const ConversionPesos(),
      icono: Icons.monitor_weight,
    ),
  ];

  // Definicion para generar rutas de forma dinamica
  static Map<String, Widget Function (BuildContext)> generarRutasApp() {
    Map<String, Widget Function (BuildContext)> appRoutes = {};
    for (final opcion in menuOpciones){
      appRoutes.addAll({opcion.ruta: (BuildContext context) => opcion.pantalla});
    }
    return appRoutes;
  }

}