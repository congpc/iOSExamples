//
//  CustomView+UITest.m
//
//  Created by Pham Chi Cong on 4/18/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import "CustomView+UITest.h"
#import "LYTStringValues.h"
#import "LYTBoolValues.h"
#import "LYTViewSize.h"
#import "LYTDeviceConstants.h"

@implementation CustomView (UITest)

+ (NSDictionary *)dataSpecForTest {
    return @{@"text1": [[LYTStringValues alloc] init],
             @"text2": [[LYTStringValues alloc] init]};
}
+ (UIView *)viewForData:(NSDictionary *)data
              reuseView:(nullable UIView *)reuseView
                   size:(nullable LYTViewSize *)size
                context:(id _Nullable * _Nullable)context {
    CustomView *view = reuseView ? (CustomView *)reuseView : [CustomView viewFromNib];
    [view setupWithJSON:data];
    return view;
}
+ (NSArray<LYTViewSize *> *)sizesForView {
    LYTViewSize* size1 = [[LYTViewSize alloc] initWithWidth:@(300)];
    LYTViewSize* size2 = [[LYTViewSize alloc] initWithWidth:@(LYTiPhone4Width)];
    LYTViewSize* size3 = [[LYTViewSize alloc] initWithWidth:@(LYTiPadWidth)];
    LYTViewSize* size4 = [[LYTViewSize alloc] initWithWidth:@(LYTiPadHeight)];
    return @[size1,size2,size3,size4];
}

@end
