//
//  TextFieldViewController.m
//  ProtocolAndDelegatePractice
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userInputTextField;

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)sendItBackPressed:(id)sender {
    
    [self.delegate sendTextBackToFirstView:_userInputTextField.text];
    
}

@end
