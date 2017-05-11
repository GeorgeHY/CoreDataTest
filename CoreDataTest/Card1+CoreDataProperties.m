//
//  Card1+CoreDataProperties.m
//  CoreDataTest
//
//  Created by 韩扬 on 2017/5/11.
//  Copyright © 2017年 韩扬. All rights reserved.
//

#import "Card1+CoreDataProperties.h"

@implementation Card1 (CoreDataProperties)

+ (NSFetchRequest<Card1 *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Card1"];
}

@dynamic no;
@dynamic person;

@end
