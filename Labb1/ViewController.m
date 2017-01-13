//
//  ViewController.m
//  Labb1
//
//  Created by Dervis Kilic on 10/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "ViewController.h"
#import "SettingsView.h"

@interface ViewController ()

@end

@implementation ViewController
SettingsView *s1;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self backgroundColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backgroundColor {
    s1 = [[SettingsView alloc] init];
    
  self.view.backgroundColor = [UIColor colorWithRed:s1.red/255.0 green:s1.green/255.0 blue:s1.blue/255.0 alpha:1.0];
}

-(void) viewWillDisappear:(BOOL)animated
{
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound)
    {
        [self.navigationController popViewControllerAnimated:NO];
    }
    [super viewWillDisappear:animated];
}

- (void) viewDidAppear:(BOOL) animated {
    self.view.backgroundColor = [UIColor colorWithRed:s1.red/255.0 green:s1.green/255.0 blue:s1.blue/255.0 alpha:1.0];
    [super viewDidAppear:animated];
}


@end
