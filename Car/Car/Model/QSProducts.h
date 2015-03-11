//
//  QSShopProducts.h
//  Car
//
//  Created by System Administrator on 10/16/14.
//  Copyright (c) 2014 Quentin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QSProducts : NSObject<NSCoding>

@property (copy, nonatomic) NSString* goods_id;

@property (copy, nonatomic) NSString* goods_name;

@property (copy, nonatomic) NSString* num;

@property (copy, nonatomic) NSString* sale_money;

@property (copy, nonatomic) NSString* sale_money_coupon;

@property (copy, nonatomic) NSString* sale_id;

@property (copy, nonatomic) NSArray*  diet;

@end
