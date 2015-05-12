//
//  addLocationVC.m
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "AddLocationVC.h"

@interface AddLocationVC ()

@end

@implementation AddLocationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameTF.delegate = self;
    _addressTF.delegate = self;
    _descritptionTextView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return YES;

}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if([text isEqualToString:@"\n"]){
        [_descritptionTextView resignFirstResponder];
        return NO;
    }else return YES;
}
-(void)textFieldDidBeginEditing:(UITextView*)textView{
    _descritptionTextView.text = @"";
    _descritptionTextView.textAlignment = NSTextAlignmentLeft;

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addBtn:(id)sender {
    Location *locationToAdd = [[Location alloc]initWithName:_nameTF.text andAddress:_addressTF.text andDescritpionStr:_descritptionTextView.text];
    if(_delegate != nil){
        [_delegate addLocation:locationToAdd];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
