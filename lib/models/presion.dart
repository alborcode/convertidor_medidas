// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Presion{

  // Definicion estatica de Lista de valores para calculo Formulas
  static final List<String> medidasPresion = [
    'Atmosferas',
    'Bares (bar.)',
    'Pascales (Pa.)',
    'Torr',
  ];

  // Definicion estatica de Lista de valores para calculo Formulas
  // Mismo orden que desplegable factor por calculo
  static final factorConversionPresion = [
    // Conversion de Atmosferas
    // Atmosfera, Bar, Pascal, Torr
    [1, 1.01325, 101325, 760],
    // Conversion de Bares
    // Atmosfera, Bar, Pascal, Tor
    [0.986923, 1, 100000, 750.062],
    // Conversion de Pascales,
    // Atmosfera, Bar, Pascal, Tor
    [0.00000986923, 0.00001, 1, 0.00750062],
    // Conversion de Tor
    // Atmosfera, Bar, Pascal, Tor
    [0.00131579, 0,00133322, 133.322, 1],
  ];


}