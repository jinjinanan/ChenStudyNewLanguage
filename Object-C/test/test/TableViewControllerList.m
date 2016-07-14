//
//  TableViewControllerList.m
//  test
//
//  Created by JSB_02 on 16/7/12.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "TableViewControllerList.h"
#import "ViewControllerSocket.h"
#import "ViewControllerClient.h"

@interface TableViewControllerList ()

@property (nonatomic,assign) NSInteger sectionCount;

@property NSDictionary *rowCountOfSection;

@end

@implementation TableViewControllerList

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     http://www.cocoachina.com/ios/20141106/10150.html
     */
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    self.sectionCount = 1;
//    [self.tableView reloadData];
}

- (void)setSectionCount:(NSInteger)sectionCount{
    if (sectionCount < 0) {
        _sectionCount = 0;
    }
    _sectionCount = sectionCount;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" ];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"socekt";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewControllerSocket *socket = [[ViewControllerSocket alloc] init];
    ViewControllerClient *client = [[ViewControllerClient alloc] init];
    
    socket.tabBarItem.title = @"服务器";
    client.tabBarItem.title = @"客户端";
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    tab.viewControllers = @[socket,client];
    
    [self.navigationController pushViewController:tab animated:YES];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
