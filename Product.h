//
//  Product.h
//  FactoryMethod
//
//  Created by Vasilii on 22.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property(nonatomic) int price;
@property(nonatomic, strong) NSString *name;

-(NSInteger *) getToTotalPrice:(int) sum;
-(void) saveObject;

@end
