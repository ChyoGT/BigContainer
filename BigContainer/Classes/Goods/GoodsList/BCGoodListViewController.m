//
//  BCGoodListViewController.m
//  BigContainer
//
//  Created by 张彦东 on 16/3/18.
//  Copyright © 2016年 zhang.yD. All rights reserved.
//

#import "BCGoodListViewController.h"

@interface BCGoodListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) UITableView * tableView;

@end

@implementation BCGoodListViewController

- (UITableView *)tableView {
    if (!_tableView) {
        UITableView * tableView = [[UITableView alloc] init];
        [self.view addSubview:tableView];
        self.tableView = tableView;
        tableView.dataSource = self;
        tableView.delegate = self;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}



#pragma mark - TableView
#pragma mark -UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellName = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.textLabel.text = @"11";
    return cell;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
}


@end
