/*
Clase Pantalla de conversion de pesos
*/

import 'package:flutter/material.dart';

// Importamos Modelos
import 'package:convertidor_medidas/models/models.dart';
// Importamos Widgets
import 'package:convertidor_medidas/ui/widgets/widgets.dart';
// Importamos Utilidades
import 'package:convertidor_medidas/ui/utils/utils.dart';


  class ConversionPesos extends StatefulWidget {
  const ConversionPesos({Key? key}) : super(key: key);

  @override
  ConversionPesosState createState() => ConversionPesosState();
  }

  class ConversionPesosState extends State<ConversionPesos> {

    late String deMedida;
    late String aMedida;

    String valorResultado = "0";

    late int valorInicial;
    late int valorFinal;

    final valorController = TextEditingController();

  @override
  void initState() {
    this.valorInicial = 0;
    this.valorFinal = 1;

    this.deMedida = Medidas.medidasPeso[this.valorInicial];
    this.aMedida = Medidas.medidasPeso[this.valorFinal];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Conversión de Pesos"),
          // Añadimos Boton para volver a menu anterior
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
            }
          )
        ),
        // Añadimos Menu Lateral
        endDrawer: const MenuLateral(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            child: Column(
              children: [
                // Añadimos Padding entre Appbar y Caja de Texto
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
                ),
                // Llamada a Caja de Texto que formatea TexField
                CajaTexto(
                  controller: valorController,
                  hint: 'Introduce valor a convertir',
                  icono: Icons.keyboard_alt_outlined,
                  nomostrar: false,
                  teclado: TextInputType.number,
                ),
                // Añadimos Padding entre caja de Texto y Texto De
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
                ),
                Text("De", style: Estilos.estiloLabel),
                SizedBox(
                  height: 8,
                ),
                DropdownButton<String>(
                    isExpanded: true,
                    value: deMedida,
                    items: Medidas.medidasPeso.map((valor) {
                      return DropdownMenuItem(
                          value: valor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              valor,
                              style: Estilos.estiloMedida,
                            ),
                          ));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        deMedida = value!;
                        valorInicial = Medidas.medidasPeso.indexOf(deMedida);
                      });
                    }),
                SizedBox(
                  height: 8,
                ),
                Text("A", style: Estilos.estiloLabel),
                SizedBox(
                  height: 8,
                ),
                DropdownButton<String>(
                    value: aMedida,
                    isExpanded: true,
                    items: Medidas.medidasPeso.map((m) {
                      return DropdownMenuItem(
                          value: m,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              m,
                              style: Estilos.estiloMedida,
                            ),
                          ));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        aMedida = value!;
                        valorFinal = Medidas.medidasPeso.indexOf(aMedida);
                      });
                    }),
                SizedBox(
                  height: 8,
                ),
                /*MaterialButton(
                  onPressed: () {
                    try {
                      // obtenemos el valor del usuario
                      final value = double.parse(valorController.text.trim());

                      setState(() {
                        // aplicamos los calculos
                        this.valorResultado = "${value * Formulas.parametrosFormulas[valorInicial][valorFinal]}";
                      });

                      //FocusScope.of(context).unfocus();
                      // ocultar teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                    } catch (e) {
                      print("Problemas con la conversión");
                    }
                  },
                  child: Text("Convertir"),
                ),*/
                Row(
                  // Centra los elementos en la fila horizontalmente
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      // Añado margenes entre botones y con respecto a la caja
                      padding: const EdgeInsets.only(
                          top: 30, left: 10, right: 10),
                      child: BotonIconoAnimado(
                        accion: () {
                          try {
                            // obtenemos el valor del usuario
                            final value = double.parse(valorController.text.trim());
                            setState(() {
                              // aplicamos los calculos
                              this.valorResultado = "${value * Formulas.parametrosFormulas[valorInicial][valorFinal]}";
                            });
                            // ocultar teclado
                            FocusScope.of(context).requestFocus(FocusNode());
                          } catch (e) {
                            print("Problemas con la conversión");
                          }
                        },
                        icono: Icons.search,
                        texto: 'Convertir',
                      ),
                    ),
                  ],
                ),
                //Spacer(),

                SizedBox(
                  height: 20,
                ),

                Text("res: $valorResultado", style: Estilos.estiloLabel),
              ],
            ),
          ),
        ),
    );
  }

}
