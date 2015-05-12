//
//  addLocationVC.h
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addLocationVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *addressTF;
@property (weak, nonatomic) IBOutlet UITextView *descritptionTextView;
- (IBAction)addBtn:(id)sender;
- (IBAction)backBtn:(id)sender;

@end
