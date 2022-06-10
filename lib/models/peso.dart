// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Peso{

  // Definicion estatica de Lista de valores para calculo Formulas
  static final List<String> medidasPeso = [
    'Gramos (gr.)',
    'Kilogramos (kg.)',
    'Miligramos (mg.)',
    'Tonelada (t.)',
    'Libras (lb.)',
    'Onzas (oz.)',
  ];

// Definicion estatica de Lista de valores para calculo Formulas
  // Mismo orden que desplegable factor por calculo
  static final factorConversionPeso = [
    // Conversion de Gramos a
    // Gramos, Kilogramos, Miligramos, Tonelada, Libras, Onzas
    [1, 0.0001, 1000, 1000000, 0.00220462, 0.035274],
    // Conversion de Kilogramos a
    // Gramos, Kilogramos, Miligramos, Tonelada, Libras, Onzas
    [1000, 1, 1000000, 0.001, 2.20462, 35.274],
    // Conversion de Miligramos a
    // Gramos, Kilogramos, Miligramos, Tonelada, Libras, Onzas
    [0.001, 1000000, 1, 1000000000, 0.00000220462262185, 0.000035274],
    // Conversion de Toneladas a
    // Gramos, Kilogramos, Miligramos, Tonelada, Libras, Onzas
    [1000000, 1000, 1000000000, 1, 2204.62, 35274],
    // Conversion de Libras a
    // Gramos, Kilogramos, Miligramos, Tonelada, Libras, Onzas
    [453.592, 0.453592, 453592, 0.0004535921, 1, 16],
    // Conversion de Onzas a
    // Gramos, Kilogramos, Miligramos, Tonelada, Libras, Onzas
    [28.3495, 0.0283495, 28349.5, 0.0000283, 0.0625, 1],
  ];

}