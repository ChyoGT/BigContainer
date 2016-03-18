//
//  BCGoodModel.h
//  BigContainer
//
//  Created by 张彦东 on 16/3/18.
//  Copyright © 2016年 zhang.yD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCGoodModel : NSObject

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * picPath;
@property (nonatomic, strong) NSNumber * number;
@property (nonatomic, strong) NSNumber * moneyJP;
@property (nonatomic, strong) NSNumber * moneyCYN;
@property (nonatomic, strong) NSNumber * moneyExchange;


+ (instancetype)goodModelWithDict:()

@end
