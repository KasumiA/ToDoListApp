//
//  ToDoListTableViewController.h
//  ToDoListApp
//
//  Created by Ludwig on 15/10/27.
//  Copyright (c) 2015年 Ludwig. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddToDoItemViewController.h"

@interface ToDoListTableViewController : UITableViewController

- (void)receiveDataFromViewController:(AddToDoItemViewController *)sourceViewController;

@end
