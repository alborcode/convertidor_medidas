// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Formulas{

  // Definicion estatica de Lista de valores para calculo Formulas
  static final parametrosFormulas = [
    // Metros a Kilometros
    [1, 0.001, 0, 0, 3.28084, 0.000621371, 0, 0],
    // Kilometros a Metros
    [1000, 1, 0, 0, 3280.84, 0.621371, 0, 0],
    // Gramos a Kilogramos
    [0, 0, 1, 0.0001, 0, 0, 0, 0022, 0.035274],
    // Kilogramos a Gramos
    [0, 0, 1000, 1, 0, 0, 2.20462, 35.274],
    // Pies a Millas
    [0.3048, 0.0003048, 0, 0, 1, 0.000189394, 0, 0],
    // Millas a Pies
    [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0],
    // Libras a Onzas
    [0, 0, 453.592, 0.453592, 0, 0, 1, 16],
    // Onzas a Libras
    [0, 0, 28.3495, 0, 02835, 3.28084, 0, 0.0625, 1],
  ];

}