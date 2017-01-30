//
//  WebViewController.h
//  KuCoLabel
//
//  Created by 司文彬 on 15/4/30.
//  Copyright (c) 2015年 KuCo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>


@property (strong,nonatomic)UIWebView *web;
@property (strong,nonatomic)NSURLRequest *url;

@end


