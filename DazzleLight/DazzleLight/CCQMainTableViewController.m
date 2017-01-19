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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    
    //给cell里的文本标签设置文字内容
    cell.textLabel.text = [NSString stringWithFormat:@"我是第%zd组第%zd行的数据",section,row];
    
    //    cell.backgroundColor = [UIColor grayColor];
    //    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}
@end
