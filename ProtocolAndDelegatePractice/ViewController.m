//
//  ViewController.m
//  ProtocolAndDelegatePractice
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];


}

-(void)sendTextBackToFirstView:(NSString *)text {
    _displayLabel.text = text;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showTextFieldVC"]) {
        TextFieldViewController *destinationVC = (TextFieldViewController *)segue.destinationViewController;
        [destinationVC setDelegate:self];
    }
}

@end
