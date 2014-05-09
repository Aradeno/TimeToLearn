//
//  LoginScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginScreen : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtGebruikersnaam;
@property (weak, nonatomic) IBOutlet UITextField *txtWachtwoord;
@property (weak, nonatomic) IBOutlet UIButton *btnLogIn;

@end
