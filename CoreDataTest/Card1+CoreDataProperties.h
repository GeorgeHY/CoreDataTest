//
//  Card1+CoreDataProperties.h
//  CoreDataTest
//
//  Created by 韩扬 on 2017/5/11.
//  Copyright © 2017年 韩扬. All rights reserved.
//

#import "Card1+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Card1 (CoreDataProperties)

+ (NSFetchRequest<Card1 *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *no;
@property (nullable, nonatomic, retain) Person1 *person;

@end

NS_ASSUME_NONNULL_END
