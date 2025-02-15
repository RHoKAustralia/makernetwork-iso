//
//  LoginViewController.m
//  MarkerNetwork
//
//  Created by Fangzhou He on 5/12/2015.
//  Copyright (c) 2015 MarkerNetwork. All rights reserved.
//

#import "LoginViewController.h"
#import <JGProgressHUD/JGProgressHUD.h>//;
#import <Parse/Parse.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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

- (IBAction)loginButton:(id)sender {
    __block NSString *passwordFromServer;
    
    [PFUser logInWithUsernameInBackground:_usernameText.text password:_passwordText.text
        block:^(PFUser *user, NSError *error) {
            if (user) {
                JGProgressHUD *HUD = [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
                HUD.textLabel.text = @"Success!";
                HUD.indicatorView = [[JGProgressHUDSuccessIndicatorView alloc] init]; //JGProgressHUDSuccessIndicatorView is also available
                [HUD showInView:self.view];
                [HUD dismissAfterDelay:2.0];
        //                                            [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(loginSuccess:) userInfo:nil repeats:NO];
            } else {
                JGProgressHUD *HUD = [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
                HUD.textLabel.text = @"Error:Invalid Username or Password";
                HUD.indicatorView = [[JGProgressHUDErrorIndicatorView alloc] init]; //JGProgressHUDSuccessIndicatorView is also available
                [HUD showInView:self.view];
                [HUD dismissAfterDelay:2.0];
            }
        }];
    
    
}
@end
