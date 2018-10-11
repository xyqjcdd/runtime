//
//  UIButton+larger.h
//  Runtime
//
//  Created by CCX on 2018/9/21.
//  Copyright © 2018年 xyq. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^TouchedBlock)(NSInteger tag);

@interface UIButton (larger)
/** 设置可点击范围到按钮边缘的距离 */
- (void)setEnlargeEdge:(CGFloat)size;
/** 设置可点击范围到按钮上、右、下、左的距离 */
- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

/**
 block
 */
-(void)addActionHandler:(TouchedBlock)touchHandler;
@end

NS_ASSUME_NONNULL_END
