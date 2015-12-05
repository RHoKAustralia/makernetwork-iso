//
//  LoginViewController.h
//  MarkerNetwork
//
//  Created by Fangzhou He on 5/12/2015.
//  Copyright (c) 2015 MarkerNetwork. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usernameText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;

- (IBAction)loginButton:(id)sender;
@end
