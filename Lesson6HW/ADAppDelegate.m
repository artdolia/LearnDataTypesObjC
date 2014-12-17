//
//  ADAppDelegate.m
//  Lesson6HW
//
//  Created by A D on 12/7/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADAppDelegate.h"
#import "ADDev.h"


@implementation ADAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    /*Level 1
    
    ADDev* developer = [[ADDev alloc] init];
    
    //developer.language = ADCPlusPlus;
    developer.language = ADJava;
    
    developer.knowsLang = Yes;
    
    if(developer.knowsLang){
    
    NSLog(@"Dev Lang is - %d", developer.language);
    }else
        NSLog(@"Don't know any langs.");
    
    */
    
    
    
    //level 2 & 3
    
    //make the point struct for the origin of the field rect
    CGPoint rectOrigin;
    //rectOrigin.x = 4;
    //rectOrigin.y = 4;
    rectOrigin = CGPointMake(4, 4);
    
    //make the size struct for the size of the field rect
    CGSize rectSize;
    //rectSize.height = 3;
    //rectSize.width = 3;
    rectSize = CGSizeMake(3, 3);
    
    //make the struct field rect
    CGRect fieldRect;
    //fieldRect = CGRectMake(4, 4, 3, 3);
    fieldRect.origin = rectOrigin;
    fieldRect.size = rectSize;
    
    //make mutable array to store the points to be created
    NSMutableArray * pointsArray = [[NSMutableArray alloc] init];
    
    //create i# of points and store into the array
    
    for(NSInteger i = 0; i<=10; i++){
        
        CGPoint point;
        point = CGPointMake(arc4random()%11, arc4random()%11);
        
        //use NSValue to decorate the points to store them into the array
        NSValue * pointValue = [NSValue valueWithCGPoint:point];
        
        [pointsArray addObject:pointValue];
    }
    
    //check if the point is in the field rect
    for(NSValue * value in pointsArray){
        
        CGPoint point = [value CGPointValue];
    
        if(CGRectContainsPoint(fieldRect, point)){
        // may also use CGRectGetWidth() and CGRectGetHeight()
        // to check if the point is in the field rect
            
            //print if the point is in the field rect
            NSLog(@"The point %@ is in the fieldRect", NSStringFromCGPoint(point));
        }else
            //print if point is not in the rect
           NSLog(@"The point %@ is NOT in the fieldRect", NSStringFromCGPoint(point));
    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
