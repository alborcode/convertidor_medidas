// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Tiempo{

  // Definicion estatica de Lista de valores para calculo Formulas
  static final List<String> medidasTiempo = [
    'Segundo (")',
    'Minuto (´)',
    'Hora (h.)',
    'Dia (d.)',
    'Semana',
    'Mes',
    'Año',
  ];

// Definicion estatica de Lista de valores para calculo Formulas
  // Mismo orden que desplegable factor por calculo
  static final factorConversionTiempo = [
    // Conversion de Segundos
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [1, 0.0166667, 0.000277778, 0.0000115741, 0.00000165344, 0.00000003170979],
    // Conversion de Minutos
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [60, 1, 0.0166667, 0.000694444, 0.0000992063, 0.000022831, 0.00000190259],
    // Conversion de Horas
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [3600, 60, 1, 0.0416667, 0.00595238, 0.00136986, 0.000114155],
    // Conversion de Dias
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [86400, 1440, 24, 1, 0.142857, 0.0328767, 0.00273973],
    // Conversion de Semanas
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [604800, 10080, 168, 7, 1, 0.230137, 0.0191781],
    // Conversion de Mes
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [2628000, 43800, 730.001, 30.4167, 4.34524, 1, 0.0833334],
    // Conversion de Año natural
    // Segundo, Minuto, Hora, Dia, Semana, Mes, Año natural
    [31536000, 43800, 730.001, 365, 52.1429, 12, 1],
  ];

}