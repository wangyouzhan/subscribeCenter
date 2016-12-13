//
//  ContectTableViewController.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/11.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "ContectTableViewController.h"
#import "Friend.h"

@interface ContectTableViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *tableDataArray;
}
@end

@implementation ContectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   tableDataArray =  [self tableDataSource ];
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    
    
    
    
    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return tableDataArray.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"www.imooc.com.searchDemo";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    Friend *friendCell = (Friend *)[tableDataArray objectAtIndex:indexPath.row];
    cell.imageView.image = friendCell.image;
    cell.textLabel.text = friendCell.name;
    cell.detailTextLabel.text = friendCell.webUrl;
    
    return cell;
}



- (NSArray *)tableDataSource{
    
    NSArray *nameArray = @[@"xiaoming",@"xiaowang", @"xiaozhang" ,@"网红"];
    int i = 0;
    NSMutableArray *friendArray = [[NSMutableArray alloc] init];
    for (NSString *item in nameArray) {
        Friend *mFriend = [[Friend alloc] init];
        mFriend.name = item;
        mFriend.image = [UIImage imageNamed:@"activity_hot_active"];
        mFriend.webUrl = @"http://imooc.com";
        mFriend.f_id = [NSString stringWithFormat:@"%d", i];
        [friendArray addObject:mFriend];
    }
    
    return (friendArray != nil? friendArray: nil);
}



@end



























