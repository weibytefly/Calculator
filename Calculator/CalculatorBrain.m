//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Wei Zhang on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end


@implementation CalculatorBrain

@synthesize operandStack = _operandStack;
- (NSMutableArray *)operandStack
{
    if(!_operandStack){
        _operandStack = [[NSMutableArray alloc] init];
    }
    return _operandStack;
}

- (void)pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if(operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)performOperation:(NSString *)operation
{
    double result = 0;
    
    if ([operation isEqualToString:@"+"]){
        result = [self popOperand] + [self popOperand];
    } else if ([operation isEqualToString:@"-"]){
        result = -1 * [self popOperand] + [self popOperand];
    } else if ([operation isEqualToString:@"*"]){
        result = [self popOperand] * [self popOperand];
    } else if ([operation isEqualToString:@"/"]){
        double divisor = [self popOperand];
        if(divisor){
            double divider = [self popOperand];
            result = divider / divisor;
        }
    }
    
    [self pushOperand:result];
    
    return result;
    
}

@end
