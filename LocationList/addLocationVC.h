//
//  addLocationVC.h
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddLocationDelegate.h"

@interface AddLocationVC : UIViewController<UITextFieldDelegate,UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *addressTF;
@property (weak, nonatomic) IBOutlet UITextView *descritptionTextView;
@property(weak,nonatomic) id<AddLocationDelegate>delegate;
- (IBAction)addBtn:(id)sender;
- (IBAction)backBtn:(id)sender;

@end
