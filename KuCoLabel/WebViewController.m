//
//  WebViewController.m
//  KuCoLabel
//
//  Created by 司文彬 on 15/4/30.
//  Copyright (c) 2015年 KuCo. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    self.web.delegate = self;
    

    [self.web loadRequest:self.url];
    [self.view addSubview:self.web];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 50, 50)];
    
    
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
    
    UITextField * ff = [[UITextField alloc] initWithFrame:CGRectMake(30, 200, 200, 30)];
    ff.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:ff];
    
    
    
    // Do any additional setup after loading the view.
}


- (void)buttonAction:(UIButton*)sender{

    NSLog(@"%@",self.web.request.URL);
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string =[NSString stringWithFormat:@"%@",self.web.request.URL];
    
//[self dismissViewControllerAnimated:YES completion:^{
//    
//}];



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

@end



