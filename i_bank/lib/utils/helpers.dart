import 'dart:developer';
import 'dart:developer' as developer;

import 'package:common_ui_toolkit/common_ui_toolkit.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

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

/// start loading spinner
void startLoading() {
  SmartDialog.showLoading(
    msg: '',
    maskColor: Colors.black54,
    builder: (BuildContext context) => Image.asset(
      '', //insert gif image
      width: DEVICE_WIDTH * 0.5,
      height: DEVICE_WIDTH * 0.5,
    ),
  );
}

/// print successes response in debug console
void printSuccessesResponse({dynamic response, dynamic time}) {
  if (showLog) {
    developer.log('📗\x1B[32m ******** Successes Request **********📗');
    developer.log('\x1B[35m Time : \x1B[37m $time  \x1B[33m milliseconds');
    developer.log('\x1B[35m Response :\x1B[37m $response');
    developer.log('\x1B[32m  *************** END **************');
  }
}

/// stop loading spinner
Future<void> dismissLoading() async {
  await SmartDialog.dismiss();
}
