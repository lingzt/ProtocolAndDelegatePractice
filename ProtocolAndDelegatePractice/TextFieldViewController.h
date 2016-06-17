//
//  TextFieldViewController.h
//  ProtocolAndDelegatePractice
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol sendTextBackToViewControllerDelegate <NSObject>

-(void)sendTextBackToFirstView:(NSString *)text;

@end

@interface TextFieldViewController : UIViewController
@property(nonatomic, weak) id<sendTextBackToViewControllerDelegate>delegate;

@end
