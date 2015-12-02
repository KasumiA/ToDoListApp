//
//  AddToDoItemViewController.m
//  ToDoListApp
//
//  Created by Ludwig on 15/10/27.
//  Copyright (c) 2015年 Ludwig. All rights reserved.
//

#import "AddToDoItemViewController.h"
#import "ToDoListTableViewController.h"

@interface AddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem *okButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(okPressed:)];
    self.navigationItem.rightBarButtonItem = okButton;
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelPressed:)];
    self.navigationItem.leftBarButtonItem = cancelButton;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)okPressed:(id)sender {
    if (self.textField.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
    
    UINavigationController *naviToDoListTVC = (UINavigationController *)[self presentingViewController];
    ToDoListTableViewController *toDoListTVC = (ToDoListTableViewController *)[naviToDoListTVC topViewController];
    [toDoListTVC receiveDataFromViewController:self];
    [toDoListTVC dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)cancelPressed:(id)sender {
    [self.navigationController popToViewController:self animated:YES];
    [[self.navigationController presentingViewController] dismissViewControllerAnimated:YES completion:nil];
}

@end
