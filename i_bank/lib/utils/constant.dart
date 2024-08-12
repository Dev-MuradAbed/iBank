import 'index.dart';

const bool developmentMode = true;
const bool showLog = false;

//   **** URLs *****
const String domainName = developmentMode
    ? 'https://devgolfsaudibooking.northeurope.cloudapp.azure.com/'
    : 'https://booking.golfsaudi.com/';

const String baseUrl = '${domainName}api';
// ----------------------------------------

//   **** Storage Keys *****
const String languageKey = 'language';

// ----------------------------------------
//   **** Languages *****
const String keyArabicValue = 'ar';
const String keyEnglishValue = 'en';

// ----------------------------------------

//   **** Routes *****
const String routeHome = '/';
const String routeSplash = '/splash';

//   **** API Methods *****
const String getMethod = 'get';
const String postMethod = 'post';
const String putMethod = 'put';
const String deleteMethod = 'delete';

//   **** Colors *****
const int colorPrimary = 0xFF281C9D;
const int colorSecondary = 0xFF5655B9;
const int colorthird = 0xFFA8A3D7;
const int colorFourth = 0xFFF2F1F9;
const int colorBlack = 0xFF343434;
const int colorGray1 = 0xFF898989;
const int colorGray2 = 0xFF989898;
const int colorGray3 = 0xFFCACACA;
const int colorGray4 = 0xFFE0E0E0;
const int colorGray5 = 0xFF979797;
const int colorwhite = 0xFFFFFFFF;
const int colorRed = 0xFFFF4267;
const int colorBlue = 0xFF0890FE;
const int colorYellow = 0xFFFFAF2A;
const int colorGreen = 0xFF52D5BA;
const int colorOrange = 0xFFFB6B18;

//   **** Fonts *****
dynamic h1Font() => languageCondition(26.0, 24.0);
dynamic h2FONT() => languageCondition(22.0, 20.0);
dynamic h3FONT() => languageCondition(18.0, 16.0);
dynamic h4FONT() => languageCondition(16.0, 14.0);
dynamic h5FONT() => languageCondition(14.0, 12.0);
dynamic headerFONT() => languageCondition(20.0, 18.0);
dynamic buttonFONT() => languageCondition(18.0, 16.0);
