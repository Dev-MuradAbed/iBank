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

//   **** API Methods *****
const String getMethod = 'get';
const String postMethod = 'post';
const String putMethod = 'put';
const String deleteMethod = 'delete';
