//
//  AAAViewController.m
//  MyTabbar
//
//  Created by wangxiaokang on 16/8/22.
//  Copyright © 2016年 Wangxiaokang. All rights reserved.
//

#import "AAAViewController.h"

@interface AAAViewController ()

@property (nonatomic, strong) UIImage * backImage;

@end

@implementation AAAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 110, 60);
    button.layer.cornerRadius = 15;
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"去除bage" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

- (void)click
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"aaa" object:self];
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
