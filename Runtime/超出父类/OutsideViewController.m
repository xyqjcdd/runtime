//
//  OutsideViewController.m
//  Runtime
//
//  Created by CCX on 2018/9/28.
//  Copyright © 2018 xyq. All rights reserved.
//

#import "OutsideViewController.h"
#import "TestView.h"

@interface OutsideViewController ()
@property (nonatomic, strong) TestView *bgView;
@property (nonatomic, strong) UIButton *button;
@end

@implementation OutsideViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.bgView = [[TestView alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    self.bgView.backgroundColor = [UIColor blueColor];
    self.bgView.userInteractionEnabled = YES;
    [self.view addSubview:self.bgView];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(0, 50, 100, 100);
    self.button.backgroundColor = [UIColor redColor];
    [self.button addActionHandler:^(NSInteger tag) {
        NSLog(@"start");
    }];
    [self.bgView addSubview:self.button];
    
    self.bgView.btn = self.button;
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
