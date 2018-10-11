//
//  TestView.m
//  Runtime
//
//  Created by CCX on 2018/9/28.
//  Copyright © 2018 xyq. All rights reserved.
//

#import "TestView.h"

@implementation TestView
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGPoint hitPoint = [self convertPoint:point toView:self.btn];
    if ([self.btn pointInside:hitPoint withEvent:event]) {
        return self.btn;
    }else{
        return [super hitTest:point withEvent:event];
    }
}
@end
