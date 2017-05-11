//
//  Person1+CoreDataProperties.m
//  CoreDataTest
//
//  Created by 韩扬 on 2017/5/11.
//  Copyright © 2017年 韩扬. All rights reserved.
//

#import "Person1+CoreDataProperties.h"

@implementation Person1 (CoreDataProperties)

+ (NSFetchRequest<Person1 *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Person1"];
}

@dynamic age;
@dynamic name;
@dynamic card;

@end
