// CLASE ESTATICA CALCULO FORMULAS PARA USO SIN NECESIDAD DE INSTANCIAR CLASE

class Area{

  // Definicion estatica de Lista de valores para calculo Formulas
  static final List<String> medidasArea = [
    'Metros 2 (m2.)',
    'Kilometros 2 (km2.)',
    'Milla 2 (mi2.)',
    'Yarda 2 (yd2.)',
    'Acre (ac.)',
    'Hectarea (ha.)',
  ];

// Definicion estatica de Lista de valores para calculo Formulas
  // Mismo orden que desplegable factor por calculo
  static final factorConversionArea = [
    // Conversion de Metro2 a
    // Metro2, Kilometro2, Milla2, Yarda2, Acre, Hectarea
    [1, 0.0000001, 0.000000386102, 1.19599, 0.000247105, 0.0001],
    // Conversion de Kilometro2 a
    // Metro2, Kilometro2, Milla2, Yarda2, Acre, Hectarea
    [1000, 1, 0.386102, 1195990, 247.105, 100],
    // Conversion de Milla2 a
    // Metro2, Kilometro2, Milla2, Yarda2, Acre, Hectarea
    [2589990, 2.58999, 1, 3097600, 640, 258.999],
    // Conversion de Yarda2 a
    // Metro2, Kilometro2, Milla2, Yarda2, Acre, Hectarea
    [0.836127, 0.000000836127, 0.000000322831, 1, 0.000206612, 0,0000836127],
    // Conversion de Acre a
    // Metro2, Kilometro2, Milla2, Yarda2, Acre, Hectarea
    [4046.86, 0.00404686, 0.0015625, 4840, 1, 0.404686],
    // Conversion de Hectarea a
    // Metro2, Kilometro2, Milla2, Yarda2, Acre, Hectarea
    [10000, 0.01, 0.00386102, 11959.9, 2.47105, 1],
  ];

}