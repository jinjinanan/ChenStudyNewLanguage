//
//  ViewControllerSocket.m
//  test
//
//  Created by JSB_02 on 16/7/12.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "ViewControllerSocket.h"
#import "GCDAsyncSocket.h"
#import "ViewControllerClient.h"

@interface ViewControllerSocket ()<GCDAsyncSocketDelegate>

@property (strong, nonatomic)GCDAsyncSocket *serverSocket;

@property (strong, nonatomic)GCDAsyncSocket *clientSocket;

@property (weak, nonatomic) IBOutlet UITextField *editText;

@property (weak, nonatomic) IBOutlet UIButton *sendMessage;

@end

@implementation ViewControllerSocket

- (void)viewDidLoad {
    [super viewDidLoad];
    self.serverSocket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    
}
- (IBAction)startNotice:(id)sender {
    NSError *error = nil;
    BOOL result = [self.serverSocket acceptOnPort:@"8080".integerValue error:&error];
    if (result && error == nil) {
        printmessage(@"开放成功");
    }
}


- (IBAction)toClientView:(id)sender {
    ViewControllerClient *client = [[ViewControllerClient alloc] init];
    [self.navigationController pushViewController:client animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendMessageAction:(id)sender {
    NSData *data = [self.editText.text dataUsingEncoding:NSUTF8StringEncoding];
    [self.clientSocket writeData:data withTimeout:-1 tag:0];
}

#pragma mark - 服务器socketDelegate
- (void)socket:(GCDAsyncSocket *)sock didAcceptNewSocket:(GCDAsyncSocket *)newSocket{
    self.clientSocket = newSocket;
    [self.clientSocket readDataWithTimeout:-1 tag:0];
}

//收到消息
-(void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag{
    NSString *text = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    printmessage(@"%@",text);
    [self.clientSocket readDataWithTimeout:-1 tag:0];
}




@end
