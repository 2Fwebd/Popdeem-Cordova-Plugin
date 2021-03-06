#import "Popdeem.h"
#import "PopdeemSDK.h"

@implementation Popdeem

- (void) enableSocialLogin:(CDVInvokedUrlCommand*)command {

  NSInteger numberOfPrompts = [[[command arguments] objectAtIndex:0] integerValue];

  [PopdeemSDK enableSocialLoginWithNumberOfPrompts:numberOfPrompts];

  CDVPluginResult* result = [CDVPluginResult
                            resultWithStatus:CDVCommandStatus_OK
                            messageAsString:@"Presented Social Login"];

  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void) pushPopdeemHome:(CDVInvokedUrlCommand*)command {
  [PopdeemSDK presentRewardFlow];
  CDVPluginResult* result = [CDVPluginResult
                            resultWithStatus:CDVCommandStatus_OK
                            messageAsString:@"Presented Popdeem Home"];

  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
