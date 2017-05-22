//
//  ProductGenerator.h
//  FactoryMethod
//
//  Created by Vasilii on 22.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "Toy.h"
#import "Dress.h"

@interface ProductGenerator : NSObject

-(Product *) getPrjduct:(int) price;

@end
