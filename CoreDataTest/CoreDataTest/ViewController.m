//
//  ViewController.m
//  CoreDataTest
//
//  Created by 韩扬 on 2017/5/11.
//  Copyright © 2017年 韩扬. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "Person1+CoreDataClass.h"
#import "Card1+CoreDataClass.h"

@interface ViewController ()

@property (nonatomic, strong) NSManagedObjectContext * context;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createContext];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btn setTitle:@"添加数据" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(initData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//搭建上下文环境
- (void)createContext{
    NSManagedObjectModel * model = [NSManagedObjectModel mergedModelFromBundles:nil];
    NSPersistentStoreCoordinator * psc = [[NSPersistentStoreCoordinator alloc]initWithManagedObjectModel:model];
    NSString * docs = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSURL * url = [NSURL fileURLWithPath:[docs stringByAppendingPathComponent:@"person.data"]];
    NSError * error = nil;
    NSPersistentStore * store = [psc addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:url options:nil error:&error];
    if (store == nil) {
        [NSException raise:@"添加数据库错误" format:@"%@",[error localizedDescription]];
    }
    
    _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSConfinementConcurrencyType];
    _context.persistentStoreCoordinator = psc;
    
}

- (void)initData
{
    Person1 * person = [NSEntityDescription insertNewObjectForEntityForName:@"Person1" inManagedObjectContext:_context];
    person.name = @"George";
    person.age = [NSNumber numberWithInt:27];
    
    Card1 * card = [NSEntityDescription insertNewObjectForEntityForName:@"Card1" inManagedObjectContext:_context];
    card.no = @"123434135411351341";
    person.card = card;
    
    
    NSError *error = nil;
    BOOL success = [_context save:&error];
    if (!success) {
        [NSException raise:@"访问数据库错误" format:@"%@",[error localizedDescription]];
    }
}

@end
