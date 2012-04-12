//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Wei Zhang on 4/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"
@interface CalculatorViewController ()
@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@end

@implementation CalculatorViewController
@synthesize display;
@synthesize userIsInTheMiddleOfEnteringANumber;
- (IBAction)digitPressed:(UIButton *)sender {
    if(self.userIsInTheMiddleOfEnteringANumber)
        self.display.text = [self.display.text stringByAppendingFormat:sender.currentTitle];
    else {
        self.display.text = sender.currentTitle;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
    
    // we are at page 140/215 of the walkthrough pdf
    
}




@end
