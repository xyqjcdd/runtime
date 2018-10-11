//
//  LargerViewController.m
//  Runtime
//
//  Created by CCX on 2018/9/28.
//  Copyright © 2018 xyq. All rights reserved.
//

#import "LargerViewController.h"

@interface LargerViewController ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation LargerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(100, 100, 200, 200);
    self.button.backgroundColor = [UIColor redColor];
    [self.button setEnlargeEdge:100];
    [self.button addActionHandler:^(NSInteger tag) {
        NSLog(@"start");
    }];
    [self.view addSubview:self.button];}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
