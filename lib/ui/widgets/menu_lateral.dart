/*
CLASE PARA CREAR WIDGET DE MENU LATERAL DE LA APP
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Importacion de Pantallas
import 'package:convertidor_medidas/ui/screens/screens.dart';

class MenuLateral extends StatelessWidget {

  const MenuLateral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String logo = 'assets/logos/alborcode.svg';

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Primer item la cabecera si no se pone UserAccount
          /*const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown
              ),
              child: Text('Menu Biblioteca',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                ),
              )
          ),*/
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.orangeAccent),
            accountName: const Text(
              "Alberto Rubio",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: const Text(
              "alborcode@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            //currentAccountPicture: FlutterLogo(),
            currentAccountPicture:
            /*Image.asset('assets/logos/LogoAlborcode.png',
              height: 24,
              fit: BoxFit.fitHeight,
            ),*/
            // Añado icono en SVG
            SvgPicture.asset(logo,
              //color: Colors.blue[300],
              width: 100,
              height: 300,
            )
          ),
          ListTile(
            hoverColor: Colors.orangeAccent,
            leading: const Icon(Icons.assignment_ind),
            title: const Text('Covertir Longitudes'),
            // Actualiza el estado de la aplicación
            onTap: () {
              // Cierra el drawer
              Navigator.pop(context);
              // Se envia a pagina Busqueda de Autor
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                  const ConversionLongitud()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration),
            title: const Text('Covertir Pesos'),
            onTap: () {
              // Cierra el drawer
              Navigator.pop(context);
              // Se envia a pagina Busqueda por Titulo
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                  const ConversionPesos()));
            },
          ),
          AboutListTile(
            icon: const Icon(
              Icons.monitor_weight,
            ),
            applicationIcon: const Icon(
              Icons.monitor_weight,
            ),
            applicationName: 'Convertidor de Medidas',
            applicationVersion: '1.0.0',
            applicationLegalese: '© 2022 A.Rubio',
            aboutBoxChildren: [
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        style: TextStyle(color: Colors.orangeAccent),
                        text: "Aplicacion Convertidor de Medidas donde podras "
                            "convertir entre diferentes medidas "),
                  ],
                ),
              ),
            ],
            child: const Text('Acerca de'),
          ),
        ],
      ),
    );
  }
}
