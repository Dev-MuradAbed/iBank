import 'dart:developer';
import 'dart:developer' as developer;

import 'index.dart';

void consoleLog(dynamic value, {dynamic key = 'value'}) {
  log('📔:\x1B[32m ******** Log $key **********:📔');
  log('\x1B[35m $key :\x1B[37m $value');
  log('📓:\x1B[32m  *************** END **************:📓');
}

/// print request details
void showRequestDetails({
  dynamic method,
  dynamic path,
  dynamic body,
}) {
  if (showLog) {
    developer.log('📘\x1B[36m ******** Request Details **********📘');
    developer.log('\x1B[35m Full URL: \x1B[37m $baseUrl$path');
    developer.log('\x1B[35m Method: \x1B[37m $method');
    developer.log('\x1B[35m Path: \x1B[37m $path');
    developer.log('\x1B[35m Body: \x1B[37m $body');
    developer.log('\x1B[36m  *************** END **************');
  }
}
