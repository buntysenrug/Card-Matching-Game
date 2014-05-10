//
//  MySignupViewController.m
//  Machismo
//
//  Created by Bunty Makhija on 5/9/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "MySignupViewController.h"

@interface MySignupViewController ()

@end

@implementation MySignupViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.signUpView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo1.png"]]];

}

-(void)viewDidLayoutSubviews{
    [self.signUpView.logo setFrame:CGRectMake(66.5f, 65.0f, 187.0f, 108.5f)];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
