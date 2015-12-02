//
//  ToDoItem.h
//  ToDoListApp
//
//  Created by Ludwig on 15/10/27.
//  Copyright (c) 2015年 Ludwig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
