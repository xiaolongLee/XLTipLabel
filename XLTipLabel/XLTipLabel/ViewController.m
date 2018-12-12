//
//  ViewController.m
//  XLTipLabel
//
//  Created by Mac-Qke on 2018/12/12.
//  Copyright © 2018 Mac-Qke. All rights reserved.
//

#import "ViewController.h"
#import "XLTipLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [XLTipLabel loadTipWithContent:@"测试一下"];
}
@end
