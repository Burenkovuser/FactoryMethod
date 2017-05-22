//
//  Product.m
//  FactoryMethod
//
//  Created by Vasilii on 22.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Product.h"

@implementation Product

-(NSInteger *)getToTotalPrice:(int)sum {
    
    return self.price + sum;
}

-(void)saveObject {
    NSLog(@"I am saving an object in to product database");
}

@end
