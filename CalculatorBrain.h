//
//  CalculatorBrain.h
//  Scientific
//
//  Created by Oliver Short on 4/19/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    OperatorTypeNone, //handle in the initializtion of said brain object
    OperatorTypeAddition,
    OperatorTypeSubtraction,
    OperatorTypeMultiplication,
    OperatorTypeDivision
} OperatorType;

@interface CalculatorBrain : NSObject

@property (strong, nonatomic) NSMutableString *operand1String;
@property (strong, nonatomic) NSMutableString *operand2String;

@property (assign) float operand1;
@property (assign) float operand2;
@property (assign) OperatorType operatorType;
@property (assign) BOOL userIsTypingNumber;

-(NSString*) executeOperationOnOperands;

@end
