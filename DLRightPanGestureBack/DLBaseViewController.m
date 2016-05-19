//
//  DLBaseViewController.m
//  DLRightPanGestureBack
//
//  Created by vera on 16/5/14.
//  Copyright © 2016年 vera. All rights reserved.
//

#import "DLBaseViewController.h"

@interface DLBaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation DLBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.创建滑动手势，taregt设置interactivePopGestureRecognizer的target，所以当界面滑动的时候就会自动调用target的action方法。handleNavigationTransition是私有类_UINavigationInteractiveTransition的方法，系统主要在这个方法里面实现动画的。
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] init];
    [pan addTarget:self.navigationController.interactivePopGestureRecognizer.delegate action:NSSelectorFromString(@"handleNavigationTransition:")];
    //2.设置代理
    pan.delegate = self;
    //3.添加到导航控制器的视图上
    [self.navigationController.view addGestureRecognizer:pan];
    
    //4.禁用系统的滑动手势
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    
    
}

#pragma mark - 滑动开始会触发
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    //只有导航的根控制器不需要右滑的返回的功能。
    if (self.navigationController.viewControllers.count <= 1)
    {
       
        return NO;
    }
    
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
