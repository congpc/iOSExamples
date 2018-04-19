//
//  CustomView.m
//
//  Created by Pham Chi Cong on 4/17/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

+ (instancetype)viewFromNib {
    id view = [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil] objectAtIndex:0];
    return view;
}

- (void)setupWithJSON:(NSDictionary*)data {
    self.firstNameLabel.text = data[@"text1"];
    self.lastNameLabel.text = data[@"text2"];
}

@end
