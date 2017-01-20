//
//  CCQMainTableViewController.m
//  DazzleLight
//
//  Created by sundusk on 2017/1/19.
//  Copyright © 2017年 ccq. All rights reserved.
//

#import "CCQMainTableViewController.h"
static NSString *cellID = @"cellID";
@interface CCQMainTableViewController ()
@property (nonatomic, strong) NSMutableArray *titles;
@property (nonatomic, strong) NSMutableArray *classNames;
@end

@implementation CCQMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.title = @"程序总入口";
    
    
    
    self.titles  = [NSMutableArray array];
    self.classNames = [NSMutableArray array];
    [self addCell:@"用户信息反馈" class:@"CCQUserFeedBackViewController"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    [self.tableView reloadData];
    
}
- (void)addCell:(NSString *)title class:(NSString *)className {
    [self.titles addObject:title];
    [self.classNames addObject:className];
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

    return self.titles.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.text = _titles[indexPath.row];
   
    return cell;
}
// 点击cell跳转控制器
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *className = self.classNames[indexPath.row];
    Class class = NSClassFromString(className);
    if (class) {
        UIViewController *ctrl = class.new;
        ctrl.title = _titles[indexPath.row];
        [self.navigationController pushViewController:ctrl animated:YES];
    }
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
