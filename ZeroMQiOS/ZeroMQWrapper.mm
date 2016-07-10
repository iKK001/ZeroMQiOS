//
//  ZeroMQWrapper.m
//  ZeroMQiOS
//
//  Created by Stephan Korner on 10/07/16.
//  Copyright © 2016 Stephan Korner. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "ZeroMQWrapper.h"
#include "ZeroMQFunctions.hpp"

@implementation ZeroMQWrapper

- (int) doTest1 {
    
    int returnInt = Test1();
    return returnInt;
}

@end