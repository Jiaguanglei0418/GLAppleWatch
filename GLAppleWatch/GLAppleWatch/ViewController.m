//
//  ViewController.m
//  GLAppleWatch
//
//  Created by jiaguanglei on 16/2/19.
//  Copyright © 2016年 roseonly. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
// 1:
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
    }
    return self;
}

// 2:
- (void)loadView
{
    [super loadView];
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

- (void)dealloc
{
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SecondViewController *secVC = [[SecondViewController alloc] init];
    secVC.view.backgroundColor = [UIColor cyanColor];
    [self.navigationController pushViewController:secVC animated:YES];
    
}
@end
