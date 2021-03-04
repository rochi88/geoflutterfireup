import Flutter
import UIKit

public class SwiftGeoflutterfireupPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "geoflutterfireup", binaryMessenger: registrar.messenger())
    let instance = SwiftGeoflutterfireupPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
