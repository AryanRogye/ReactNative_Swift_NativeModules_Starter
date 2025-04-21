#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(NativeStuff, NSObject)
RCT_EXTERN_METHOD(helloWorld:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(openMyModalWithContent:(NSString *)content)
@end
