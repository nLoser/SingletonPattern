//
//  ViewController.m
//  SingletonPattern
//
//  Created by LV on 16/4/6.
//  Copyright © 2016年 Wieye. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Singleton * singleto = [Singleton shareInstance];
    NSLog(@"%@ %@ %d",singleto.string,singleto.number,singleto.flag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
