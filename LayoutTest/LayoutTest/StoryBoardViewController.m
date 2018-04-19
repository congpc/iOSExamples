//
//  StoryBoardViewController.m
//
//  Created by Pham Chi Cong on 4/17/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import "StoryBoardViewController.h"

@interface StoryBoardViewController ()

@end

@implementation StoryBoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupWithJSON:self.data];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupWithJSON:(NSDictionary*)data {
    self.topLeftLabel.text = data[@"topLeft"];
    self.topRightLabel.text = data[@"topRight"];
    self.bottomLeftLabel.text = data[@"bottomLeft"];
    self.bottomRightLabel.text = data[@"bottomRight"];
    self.centerLabel.text = data[@"center"];
}
@end
