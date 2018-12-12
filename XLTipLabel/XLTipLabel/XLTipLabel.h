//
//  XLTipLabel.h
//  XLTipLabel
//
//  Created by Mac-Qke on 2018/12/12.
//  Copyright © 2018 Mac-Qke. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XLTipLabel : UILabel
/** 在某个视图中弹出提示框 */
+ (instancetype)loadTipWithContent:(NSString *)content InView:(UIView *)view;
/** 简版 直接显示在window上 */
+ (void)loadTipWithContent:(NSString *)content;

@end

NS_ASSUME_NONNULL_END
