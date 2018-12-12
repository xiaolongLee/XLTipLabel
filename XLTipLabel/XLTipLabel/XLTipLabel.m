//
//  XLTipLabel.m
//  XLTipLabel
//
//  Created by Mac-Qke on 2018/12/12.
//  Copyright © 2018 Mac-Qke. All rights reserved.
//

#import "XLTipLabel.h"
#import "AppDelegate.h"
@implementation XLTipLabel

- (void)dealloc {
    NSLog(@"%s",__func__);
}

+ (instancetype)loadTipWithContent:(NSString *)content InView:(UIView *)view {
    XLTipLabel *tipLabel = [self new];
    tipLabel.backgroundColor = [UIColor blackColor];
    tipLabel.text = content;
    tipLabel.textColor = [UIColor whiteColor];
    tipLabel.textAlignment = NSTextAlignmentCenter;
    tipLabel.layer.cornerRadius = 8;
    tipLabel.layer.masksToBounds = YES;
    tipLabel.alpha = 0.0;
    tipLabel.center = view.center;
    tipLabel.numberOfLines = 0;
    [view addSubview:tipLabel];
    CGSize tipLabelSize = [tipLabel sizeThatFits:CGSizeMake(150, FLT_MAX)];
    tipLabel.bounds = CGRectMake(0, 0, 150, tipLabelSize.height + 20);
    //动画
    [UIView animateWithDuration:1.5 animations:^{
        tipLabel.alpha = 1.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.5 animations:^{
            tipLabel.alpha = 0.0;
        } completion:^(BOOL finished) {
            [tipLabel removeFromSuperview];
        }];
    }];
    
    return tipLabel;
}

+ (void)loadTipWithContent:(NSString *)content {
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    XLTipLabel *tipLabel = [self new];
    tipLabel.backgroundColor = [UIColor blackColor];
    tipLabel.text = content;
    tipLabel.textColor = [UIColor whiteColor];
    tipLabel.textAlignment = NSTextAlignmentCenter;
    tipLabel.layer.cornerRadius = 8;
    tipLabel.layer.masksToBounds = YES;
    tipLabel.alpha = 0.0;
    tipLabel.center = app.window.center;
    tipLabel.numberOfLines = 0;
    [app.window addSubview:tipLabel];
    CGSize tipLabelSize = [tipLabel sizeThatFits:CGSizeMake(200, FLT_MAX)];
    tipLabel.bounds = CGRectMake(0, 0, 200, tipLabelSize.height +20);
    //动画
    [UIView animateWithDuration:1.5 animations:^{
        tipLabel.alpha = 1.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.5 animations:^{
            tipLabel.alpha = 1.0;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.5 animations:^{
                tipLabel.alpha = 0.0;
            } completion:^(BOOL finished) {
                [tipLabel removeFromSuperview];
            }];
        }];
    }];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
