//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Wei Zhang on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;
- (double)popOperand;
- (double)performOperation:(NSString *)operation;


@end
