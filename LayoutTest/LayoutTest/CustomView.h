//
//  CustomView.h
//
//  Created by Pham Chi Cong on 4/17/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomView : UIView 

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;

- (void)setupWithJSON:(NSDictionary*)data;

+ (instancetype)viewFromNib;

@end
