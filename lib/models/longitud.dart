class Longitud{

  // Definicion estatica de Lista de valores para calculo Formulas

  static final List<String> medidasLongitud = [
    'Metros (m.)',
    'Kilometros (km.)',
    'Centimetros (cm.)',
    'Milimetros (mm.)',
    'Pies (ft.)',
    'Millas (mi.)',
    'Legua (lea.)',
    'Yarda (yd.)',
    'Pulgadas (in.)',
  ];

  // Definicion estatica de Lista de valores para calculo Formulas
  // Mismo orden que desplegable factor por calculo
  static final factorConversionLongitud = [
    // Conversion de Metros a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [1, 0.001, 100, 1000, 3.2808441599999995653, 0.00062137199999999991832, 0.00020712399999999996374, 1.0936147199999999, 39.370129919999996559],
    // Conversion de Kilometros a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [1000, 1, 100000, 1000000, 3280.8441599999995653, 0.62137199999999991832, 0.20712399999999996374, 1093.6147199999999, 39370.129919999996559],
    // Conversion de Pies a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [0.3048, 0.0003048, 30.48, 304.8, 1, 0.000189394, 0.0000725714, 0.333333, 11.999988],
    // Conversion de Millas a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [1609.34, 1.60934, 160934, 1609430, 5280, 1, 0.333333, 1760, 63360],
    // Conversion de Leguas a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [4828.03, 4.82803, 482803, 4828030, 15840, 3, 1, 5280, 190080],
    // Conversion de Yardas a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [0.9144, 914.4, 0.009144, 0.0009144, 3, 0.000568182, 0.000189394, 1, 36],
    // Conversion de Pulgadas a
    // Metros, Kilometros, Centimetro, Milimetro, Pies, Millas, Legua, Yarda, Pulgadas
    [0.0254, 0.0000254, 2.54, 25.4, 0.0833333, 0.000016, 0.0000046, 0.0277778, 1],
  ];

}