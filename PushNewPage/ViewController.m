//
//  ViewController.m
//  PushNewPage
//
//  Created by 崔先生的MacBook Pro on 2022/10/8.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UINavigationBar appearance] setBarTintColor:[UIColor orangeColor]];
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)push {
    CATransition *transition = [CATransition animation];
    transition.duration = 0.4f;
    transition.type = kCATransitionMoveIn;
    //动画过渡方向
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    ViewController2 *newVC = [ViewController2 new];
    [self.navigationController pushViewController:newVC animated:NO];
}

@end
