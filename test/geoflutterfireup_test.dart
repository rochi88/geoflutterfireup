import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geoflutterfireup/geoflutterfireup.dart';

void main() {
  const MethodChannel channel = MethodChannel('geoflutterfireup');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Geoflutterfireup.platformVersion, '42');
  });
}
