/*
Clase Pantalla de conversiones de Velocidad
*/

import 'package:flutter/material.dart';

// Importamos Pantallas para llamadas
import 'package:convertidor_medidas/models/models.dart';
// Importamos Widgets
import 'package:convertidor_medidas/ui/widgets/widgets.dart';
// Importamos Utilidades
import 'package:convertidor_medidas/ui/utils/utils.dart';

  class ConversionVelocidad extends StatefulWidget {
  const ConversionVelocidad({Key? key}) : super(key: key);

  @override
  ConversionVelocidadState createState() => ConversionVelocidadState();
  }

  class ConversionVelocidadState extends State<ConversionVelocidad> {

  // Valores conversion De A
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

    // Cargo el valor deMedida
    this.deMedida = Velocidad.medidasVelocidad[this.valorInicial];
    // Cargo el valor aMedida
    this.aMedida = Velocidad.medidasVelocidad[this.valorFinal];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Conversión de Velocidad"),
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
                  // Seleccionamos teclado numerico para que se introduzca numero
                  teclado: TextInputType.number,
                  // Enviamos expresion regular que permite números enteros y decimales
                  // Un dígito en el intervalo 1-9 seguido de cero o más otros dígitos
                  // y opcionalmente, seguido de un punto decimal seguido de al menos 1 dígito:
                  //formato:
                  //[FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*(\.\d+)?$'))]
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
                    items: Velocidad.medidasVelocidad.map((elemento) {
                      return DropdownMenuItem(
                          value: elemento,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              elemento,
                              style: Estilos.estiloMedida,
                            ),
                          ));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        deMedida = value!;
                        valorInicial = Velocidad.medidasVelocidad.indexOf(deMedida);
                      });
                    }),
                SizedBox(
                  height: 8,
                ),
                Text("A", style: Estilos.estiloLabel),
                SizedBox(
                  height: 8,
                ),
                // Definimos el DropdownButton de tipo String
                DropdownButton<String>(
                    value: aMedida,
                    isExpanded: true,
                    items: Velocidad.medidasVelocidad.map((elemento) {
                      return DropdownMenuItem(
                          value: elemento,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              elemento,
                              style: Estilos.estiloMedida,
                            ),
                          ));
                    // Pasamos a Tolist porque el items espera una lista
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        // Decimos con ! que value siempre va a tener un valor
                        aMedida = value!;
                        valorFinal = Velocidad.medidasVelocidad.indexOf(aMedida);
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
                          // lo ponemos en un try por si hubo algun error
                          try {
                            // obtenemos el valor del usuario
                            final value = double.parse(valorController.text.trim());
                            setState(() {
                              // aplicamos los calculos
                              this.valorResultado = "${value * Velocidad.factorConversionVelocidad[valorInicial][valorFinal]}";
                            });
                            // ocultar teclado
                            FocusScope.of(context).requestFocus(FocusNode());
                          } catch (e) {
                            mensaje(context, "Problemas con la conversión");
                            //print("Problemas con la conversión");
                          }
                        },
                        icono: Icons.search,
                        texto: 'Convertir',
                      ),
                    ),
                  ],
                ),
                // Si ponemos Spacer lo lleva al final del todo da problemas con scrool
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
