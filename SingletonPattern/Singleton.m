//
//  Singleton.m
//  SingletonPattern
//
//  Created by LV on 16/4/6.
//  Copyright © 2016年 Wieye. All rights reserved.
//

#import "Singleton.h"

static Singleton * _shareSingleton = nil;

@implementation Singleton

- (instancetype)init
{
    [NSException raise:@"SingletonPattern"
                format:@"Cannot instance singleton using 'init' method, shareInstance must be used."];
    
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    [NSException raise:@"SingletonPattern"
                format:@"Cannot instance singleton using copy method, shareInstance must be used."];
    
    return nil;
}

+ (Singleton *)shareInstance
{
    if (self != [Singleton class])
    {
        [NSException raise:@"SingletonPattern"
                    format:@"Cannot use shareInstance method from subclass."];
    }

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareSingleton = [[Singleton alloc] initInstance];
    });
    
    return _shareSingleton;
}

- (id)initInstance
{
    return [super init];
}

@end
