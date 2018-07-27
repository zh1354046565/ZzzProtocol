//
//  ViewController.m
//  ZzzProtocol
//
//  Created by apple on 2018/7/26.
//  Copyright © 2018年 张磊. All rights reserved.
//

#import "ViewController.h"
#import "ZzzDelegate.h"
#import "ViewControllerOne.h"

@interface ViewController ()<ZzzDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    ViewControllerOne *one = [ViewControllerOne new];
    one.delegate = self;
    [self.navigationController pushViewController:one animated:YES];
    
}

-(void)hhhh:(int)num{
    NSLog(@"ViewControllerTwo传过来的值为:%d",num);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
