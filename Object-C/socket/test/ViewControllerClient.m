//
//  ViewControllerClient.m
//  test
//
//  Created by JSB_02 on 16/7/13.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "ViewControllerClient.h"
#import <GCDAsyncSocket.h>

@interface ViewControllerClient ()<GCDAsyncSocketDelegate>

@property (strong, nonatomic)GCDAsyncSocket *clientSocket;

@property (weak, nonatomic) IBOutlet UITextField *address;

@property (weak, nonatomic) IBOutlet UITextField *portTF;

@property (weak, nonatomic) IBOutlet UIButton *sendMessage;

@property (weak, nonatomic) IBOutlet UITextField *editMessage;
@end

@implementation ViewControllerClient

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clientSocket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
}

- (IBAction)connectAction:(id)sender {
    [self.clientSocket connectToHost:self.address.text onPort:self.portTF.text.integerValue viaInterface:nil withTimeout:-1 error:nil];
}

- (IBAction)sendMessageAction:(id)sender {
    NSData *data = [self.editMessage.text dataUsingEncoding:NSUTF8StringEncoding];
    [self.clientSocket writeData:data withTimeout:-1 tag:0];
}


- (IBAction)toServeView:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark- GCDAsyncSocketDelegate
- (void)socket:(GCDAsyncSocket *)sock didConnectToHost:(NSString *)host port:(uint16_t)port{
    [self.clientSocket readDataWithTimeout:-1 tag:0];
}

// 收到消息
- (void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag{
    NSString *text = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    printmessage(@"%@", text);
    [self.clientSocket readDataWithTimeout:-1 tag:0];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
