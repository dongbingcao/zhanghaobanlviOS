//
//  ViewController.m
//  KuCoLabel
//
//  Created by 司文彬 on 15/4/23.
//  Copyright (c) 2015年 KuCo. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    self.web = [[UIWebView alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    self.web.delegate = self;
    
    NSURL *url = [NSURL URLWithString:@"http://webapp.c-doctor.com:8003/webpro-admin_test/admin/xiaoruPush/searchXiaoruListById?id=2d00f01d0aec40beae4ecaf1b33e50e6"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
   
    [self.web loadRequest:request];
    [self.view addSubview:self.web];
    
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - UIWebView delegate;
//网路加载完成时调用：
- (void)webViewDidFinishLoad:(UIWebView *)wb
{
    CGRect frame = wb.frame;
    frame.size.width = 200;
    frame.size.height = 1;
    wb.scrollView.scrollEnabled = NO;
    wb.frame = frame;
    frame.size.height = wb.scrollView.contentSize.height;
    wb.frame = frame;
}




//网路将要加载时调用；
- (void)webViewDidStartLoad:(UIWebView *)webView{
    
    
   
    
    
    
    
    
    //  [self webViewDidStartLoad1];
}
//网络加载失败时调用：
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{




}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
   
    
    
    NSURL *url = [request URL];
    
    NSString *ss = [NSString stringWithFormat:@"%@",url];
    if (![ss isEqualToString:@"http://webapp.c-doctor.com:8003/webpro-admin_test/admin/xiaoruPush/searchXiaoruListById?id=2d00f01d0aec40beae4ecaf1b33e50e6"])
    {
        WebViewController *web = [[WebViewController alloc] init];
        web.url = request;
        
        [self presentViewController:web animated:YES completion:^{
            
        }];
    
    

        
        //用系统浏览器打开
//        if([[UIApplication sharedApplication]canOpenURL:url])
//        {
//            [[UIApplication sharedApplication]openURL:url];
//        }
        return NO;
    }
    return YES;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
