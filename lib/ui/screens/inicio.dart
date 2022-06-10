/*
Pantalla Principal de Entrada de Aplicacion que muestra menu de opciones
*/

import 'package:flutter/material.dart';

// Importamos Rutas
import 'package:convertidor_medidas/routes/app_routes.dart';
// Importamos Widgets
import 'package:convertidor_medidas/ui/widgets/widgets.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          title: Center(
            child: const Text('CONVERTIDOR DE MEDIDAS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // Añadimos Menu Lateral
        endDrawer: const MenuLateral(),
        // Con GestureDetector podemos detectar cuando se hace click
        body: Card(
          child: ListView.separated(
            itemBuilder: (context, i) =>
                ListTile(
                  leading: Icon(
                      AppRoutes.menuOpciones[i].icono,
                      color: Colors.deepOrange,
                  ),
                  title: Text(AppRoutes.menuOpciones[i].nombre),
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.menuOpciones[i].ruta);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOpciones.length,
          ),
        )
    );
  }
}

