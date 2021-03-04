#import "GeoflutterfireupPlugin.h"
#if __has_include(<geoflutterfireup/geoflutterfireup-Swift.h>)
#import <geoflutterfireup/geoflutterfireup-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "geoflutterfireup-Swift.h"
#endif

@implementation GeoflutterfireupPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGeoflutterfireupPlugin registerWithRegistrar:registrar];
}
@end
