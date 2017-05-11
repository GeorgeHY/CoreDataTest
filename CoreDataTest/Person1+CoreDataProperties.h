//
//  Person1+CoreDataProperties.h
//  CoreDataTest
//
//  Created by 韩扬 on 2017/5/11.
//  Copyright © 2017年 韩扬. All rights reserved.
//

#import "Person1+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Person1 (CoreDataProperties)

+ (NSFetchRequest<Person1 *> *)fetchRequest;

@property (nonatomic) int16_t age;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) Card1 *card;

@end

NS_ASSUME_NONNULL_END
