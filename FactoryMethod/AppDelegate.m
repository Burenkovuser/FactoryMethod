//
//  AppDelegate.m
//  FactoryMethod
//
//  Created by Vasilii on 22.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "ProductGenerator.h"
#import "Product.h"
#import "Toy.h"
#import "Dress.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //  Наследники решают какой тип создавать. До 100 игрушка, свыше 100 одежда. Ниже создан метод который считает и записывает расходы
    
    [self saveExpenses: 50];
    [self saveExpenses:20];
    [self saveExpenses:187];
    [self saveExpenses:583];
    [self saveExpenses:87];
    

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)saveExpenses:(int)aPrice{
    
    ProductGenerator *pg = [[ProductGenerator alloc] init];
    
    Product *expense = [pg getPrjduct:aPrice];
    [expense saveObject];
    
}

@end
