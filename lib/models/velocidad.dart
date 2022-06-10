// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Velocidad{

// Definicion estatica de Lista de valores para calculo Formulas
  static final List<String> medidasVelocidad = [
    'Metros x Segundo (m/s.)',
    'Pies x Segundo (ft/s.)',
    'Kilometros x Hora (Km/h.)',
    'Millas x Hora (mi/h.)',
    'Nudos',
  ];

  // Definicion estatica de Lista de valores para calculo Formulas
  // Mismo orden que desplegable factor por calculo
  static final factorConversionVelocidad = [
    // Conversion de Metro x segundo
    // Metroxsegundo, Piexsegundo, Kilometroxhora, Millaxhora, Nudo
    [1, 3.28084, 3.6, 2.23694, 1.94384],
    // Conversion de Pies x segundo
    // Metroxsegundo, Piexsegundo, Kilometroxhora, Millaxhora, Nudo
    [0.3048, 1, 1.09728, 0.681818, 0.592484],
    // Conversion de Kilometro x hora
    // Metroxsegundo, Piexsegundo, Kilometroxhora, Millaxhora, Nudo
    [0.277778, 0.911344, 1, 0.621371, 0.539957],
    // Conversion de Milla x hora
    // Metroxsegundo, Piexsegundo, Kilometroxhora, Millaxhora, Nudo
    [0.44704, 1.46667, 1.60934, 1, 0.868976],
    // Conversion de Nudos
    // Metroxsegundo, Piexsegundo, Kilometroxhora, Millaxhora, Nudo
    [0.514444, 1.68781, 1.852, 1.15078, 1],
  ];

}