//
//  ViewController.m
//  WebServiceConnection
//
//  Created by Sushma Reddy on 9/2/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url=[NSURL URLWithString:@"http://mobileappinnovator.com/wp-content/plugins/mobileblog/website_feed.php"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLResponse *response;
    NSError *error;
    
    NSData *data =   [NSURLConnection sendSynchronousRequest:request
                                                          returningResponse:&response
                                                                      error:&error];
    NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments
                                                                  error:nil];
    NSLog(@"%@",responseData);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
