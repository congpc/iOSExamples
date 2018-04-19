//
//  ViewController.h
//
//  Created by Pham Chi Cong on 4/17/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoryBoardViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *topLeftLabel; //Tag 10
@property (weak, nonatomic) IBOutlet UILabel *topRightLabel; //Tag 11
@property (weak, nonatomic) IBOutlet UILabel *centerLabel; //Tag 12
@property (weak, nonatomic) IBOutlet UILabel *bottomLeftLabel; //Tag 13
@property (weak, nonatomic) IBOutlet UILabel *bottomRightLabel; //Tag 14

@property (strong, nonatomic) NSDictionary* data;

- (void)setupWithJSON:(NSDictionary*)data;

@end

