//
//  AboutMeView.m
//  Labb1
//
//  Created by Dervis Kilic on 13/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "AboutMeView.h"
#import "SettingsView.h"
#import "ViewController.h"
@interface AboutMeView ()

@end

@implementation AboutMeView
- (void)viewDidLoad {
    [super viewDidLoad];
    [self getBackground];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) viewDidAppear:(BOOL) animated {
    [self getBackground];
    [super viewDidAppear:animated];
}

-(void) getBackground {
    if(!standardColor){
        self.view.backgroundColor = [UIColor colorWithRed:redColor
                                                    green:greenColor
                                                     blue:blueColor
                                                    alpha:1.0];
        
    }
}

@end
