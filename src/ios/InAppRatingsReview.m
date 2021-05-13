#import "InAppRatingsReview.h"

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@implementation InAppRatingsReview
- (void) pluginInitialize {
    NSLog(@"Initializing InAppRatingsReview plugin");
}

- (void) requestReview:(CDVInvokedUrlCommand*)command{
    if (@available(iOS 14.0, *)) {
        [SKStoreReviewController requestReviewInScene:self.viewController.view.window.windowScene];
    } else if (@available(iOS 10.3, *)){
        [SKStoreReviewController requestReview];
    }
}
@end
