//
//  CCQMainTableViewController.m
//  DazzleLight
//
//  Created by sundusk on 2017/1/19.
//  Copyright © 2017年 ccq. All rights reserved.
//

#import "CCQMainTableViewController.h"

@interface CCQMainTableViewController ()

@end

@implementation CCQMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}

@end
