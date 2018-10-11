//
//  ViewController.m
//  Runtime
//
//  Created by CCX on 2018/9/19.
//  Copyright © 2018年 xyq. All rights reserved.
//

#import "ViewController.h"
#import "OutsideViewController.h"
#import "LargerViewController.h"
#import "SelectViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UIButton *button;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UITableView -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"mycell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = self.array[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {   //按钮超出父类
            OutsideViewController *outsideVC = [[OutsideViewController alloc] init];
            outsideVC.title = title;
            [self.navigationController pushViewController:outsideVC animated:YES];
        }
            break;
        case 1:
        {   //扩大响应区域
            LargerViewController *largerVC = [[LargerViewController alloc] init];
            largerVC.title = title;
            [self.navigationController pushViewController:largerVC animated:YES];
        }
            break;
        case 2:
        {   //查询png文件
            SelectViewController *selectVC = [[SelectViewController alloc] init];
            selectVC.title = title;
            [self.navigationController pushViewController:selectVC animated:YES];
        }
            break;
        default:
            break;
    }
}

- (NSArray*) array {
    if (!_array) {
        _array = @[@"button超出父类",@"扩大button响应区域",@"查询目录下png文件"];
    }
    return _array;
}
@end
