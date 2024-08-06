import 'dart:developer';

void consoleLog(dynamic value, {dynamic key = 'value'}) {
  log('📔:\x1B[32m ******** Log $key **********:📔');
  log('\x1B[35m $key :\x1B[37m $value');
  log('📓:\x1B[32m  *************** END **************:📓');
}
