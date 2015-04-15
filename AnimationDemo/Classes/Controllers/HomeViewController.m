//
//  HomeViewController.m
//  AnimationDemo
//
//  Created by daoneng on 15/4/9.
//  Copyright (c) 2015年 dawningsun. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.baidu.com/"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
}

#pragma mark -
#pragma mark  UIWebView Delegate Methods
//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
//{
//}

//- (void)webViewDidStartLoad:(UIWebView *)webView
//{}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    //获取当前页面URL
    NSString *currentURL = [webView stringByEvaluatingJavaScriptFromString:@"document.location.href"];
    NSLog(@"currentURL--%@", currentURL);
    
    //获取当前页面标题
    NSString *title = [self.webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSLog(@"title-- %@", title);
    NSString *js_result = [webView stringByEvaluatingJavaScriptFromString:@"document.getElementsByName('q')[0].value='侯文富专栏';"];
    NSLog(@"%@", js_result);
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"error--%@", error);
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
