//
//  ViewControllerOne.m
//  TYTYTYTYTUUU
//
//  Created by apple on 2018/7/26.
//  Copyright © 2018年 张磊. All rights reserved.
//

#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"

@interface ViewControllerOne ()<ZzzDelegate>

@end

@implementation ViewControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"One";
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(100, 200, 80, 40);
    [btn setTitle:@"返回" forState:(UIControlStateNormal)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(back:) forControlEvents:(UIControlEventTouchUpInside)];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ViewControllerTwo *two = [ViewControllerTwo new];
    two.protocal = self;
    [self.navigationController pushViewController:two animated:YES];
}
-(void)back:(UIButton *)sender{
//    [self protocalMethod];
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)hhhh:(int)num{
    NSLog(@"ViewControllerTwo传过来的值为:%d",num);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    if (![self.navigationController.viewControllers containsObject:self]){
        //自定义实现协议方法
        [self protocalMethod];
    }
}

-(void)protocalMethod{
    if ([self.delegate respondsToSelector:@selector(hhhh:)]) {
        [self.delegate hhhh:1111];
    }
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
