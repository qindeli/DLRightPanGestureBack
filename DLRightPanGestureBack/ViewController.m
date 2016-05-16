//
//  ViewController.m
//  DLRightPanGestureBack
//
//  Created by vera on 16/5/14.
//  Copyright © 2016年 vera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = [NSString stringWithFormat:@"第%ld页",self.navigationController.childViewControllers.count];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
