//
//  ProductGenerator.m
//  FactoryMethod
//
//  Created by Vasilii on 22.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ProductGenerator.h"

@implementation ProductGenerator

-(Product *)getPrjduct:(int)price {
    
    if (price > 0 && price < 100) {
        Toy *p = [[Toy alloc] init];
        return p;
    }
    if (price > 100) {
        Dress *p = [[Dress alloc] init];
        return p;
    }
    return nil;
}

@end
