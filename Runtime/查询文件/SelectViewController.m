//
//  SelectViewController.m
//  Runtime
//
//  Created by CCX on 2018/9/28.
//  Copyright © 2018 xyq. All rights reserved.
//

#import "SelectViewController.h"

@interface SelectViewController ()

@end

@implementation SelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
//    [self showAllFileWithPath:@"/Users/ccx/Downloads"];
    [self showAllFileWithPath:@""];
}

//查找文件
- (void) showAllFileWithPath:(NSString*) path {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDir = NO;
    BOOL isExist = [fileManager fileExistsAtPath:path isDirectory:&isDir];
    if (isExist) {
        if (isDir) {
            NSArray * dirArray = [fileManager contentsOfDirectoryAtPath:path error:nil];
            NSString * subPath = nil;
            for (NSString * str in dirArray) {
                @autoreleasepool {
                    subPath  = [path stringByAppendingPathComponent:str];
                    BOOL issubDir = NO;
                    [fileManager fileExistsAtPath:subPath isDirectory:&issubDir];
                    [self showAllFileWithPath:subPath];
                }
            }
        }else{
            NSString *fileName = [[path componentsSeparatedByString:@"/"] lastObject];
            if ([fileName hasSuffix:@".png"]) {
                NSLog(@"%@", path);
            }
        }
    }else{
        NSLog(@"this path is not exist!");
    }
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
