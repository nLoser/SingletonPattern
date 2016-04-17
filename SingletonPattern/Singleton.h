//
//  Singleton.h
//  SingletonPattern
//
//  Created by LV on 16/4/6.
//  Copyright © 2016年 Wieye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic, strong) NSString * string;
@property (nonatomic, strong) NSNumber * number;
@property (nonatomic, assign) BOOL     flag;

+ (Singleton *)shareInstance;

@end
