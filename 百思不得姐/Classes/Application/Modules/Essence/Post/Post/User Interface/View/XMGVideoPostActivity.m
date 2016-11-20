//
//  XMGVideoPostActivity.m
//  百思不得姐
//
//  Created by 付星 on 2016/11/19.
//  Copyright © 2016年 yizzuide. All rights reserved.
//

#import "XMGVideoPostActivity.h"

@interface XMGVideoPostActivity ()

@end

@implementation XMGVideoPostActivity

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.backgroundColor = [UIColor whiteColor];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@----%zd", [self class], indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LogVerbose(@"%@", NSStringFromUIEdgeInsets(tableView.contentInset));
    LogVerbose(@"%@", NSStringFromCGRect(tableView.frame));
}

@end
