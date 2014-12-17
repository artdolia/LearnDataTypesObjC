//
//  ADHuman.h
//  Lesson6HW
//
//  Created by A D on 12/7/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADHuman : NSObject

typedef enum{
    ADDotNet,
    ADCPlusPlus,
    ADJava
}ADLang;

typedef enum {
    Yes,
    No 
}ADKnowsLang;

@property (assign, nonatomic) ADLang language;
@property (assign, nonatomic) ADKnowsLang knowsLang;

@end
