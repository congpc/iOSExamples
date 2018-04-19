//
//  StoryBoardViewController+UITest.m
//
//  Created by Pham Chi Cong on 4/18/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import "StoryBoardViewController+UITest.h"
#import "LYTStringValues.h"
#import "LYTBoolValues.h"
#import "LYTViewSize.h"
#import "LYTDeviceConstants.h"

static StoryBoardViewController* vc;

@implementation StoryBoardViewController (UITest)

+ (NSDictionary *)dataSpecForTest {
    return @{@"topLeft": [[LYTStringValues alloc] init],
             @"topRight": [[LYTStringValues alloc] init],
             @"bottomLeft": [[LYTStringValues alloc] init],
             @"bottomRight": [[LYTStringValues alloc] init],
             @"center": [[LYTStringValues alloc] init]};
//    return @{@"topLeft": @"Top Left",
//             @"topRight": @"Top Right",
//             @"bottomLeft": @"Bottom Left",
//             @"bottomRight": @"Bottom Right",
//             @"center": @"Center"};
}
+ (UIView *)viewForData:(NSDictionary *)data
              reuseView:(nullable UIView *)reuseView
                   size:(nullable LYTViewSize *)size
                context:(id _Nullable * _Nullable)context {
    if (!vc) {
        NSString* storyboardName = [[NSBundle mainBundle].infoDictionary objectForKey:@"UIMainStoryboardFile"];
        UIStoryboard *st = [UIStoryboard storyboardWithName:storyboardName bundle:[NSBundle mainBundle]];
        vc = [st instantiateViewControllerWithIdentifier:@"StoryBoardViewController"];
        vc.data = data;
    }else {
        [vc setupWithJSON:data];
    }
    UIView *view = reuseView ? (UIView *)reuseView : vc.view;
    return view;
}
+ (NSArray<LYTViewSize *> *)sizesForView {
    LYTViewSize* size1 = [[LYTViewSize alloc] initWithWidth:@(LYTiPhone4Width) height:@(LYTiPhone4Height)];
    LYTViewSize* size2 = [[LYTViewSize alloc] initWithWidth:@(LYTiPhone6PlusWidth) height:@(LYTiPhone6PlusHeight)];
    return @[size1,size2];
}

@end
