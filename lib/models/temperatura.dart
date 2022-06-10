// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Temperatura{
  static double grados = 0;

  // Definicion estatica de Lista de valores para calculo Formulas
  static final List<String> medidasTemperatura = [
    'Grados centigrados (ºC)',
    'Grados Farenheit (°F.)',
    'Grados Kelvin (°K)',
  ];

  // Definicion metodos calculo conversion temperaturas
  double celsiusFarenheit (grados) {
    return (grados * 9 / 5) + 32;
  }

  double celsiusKelvin (grados) {
    return (grados + 273.15);
  }

  double farenheitCelsius (grados) {
    return (grados - 32) * (5 / 9);
  }

  double farenheitKelvin (grados) {
    return (grados - 32) * (5 / 9) + 273.15;
  }

  double kelvinCelsius (grados) {
    return (grados - 273.15);
  }

  double kelvinFarenheit (grados) {
    return ((grados - 273.15) * (9 / 5)) + 32;
  }

}