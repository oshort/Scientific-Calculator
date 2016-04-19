//
//  ViewController.m
//  Scientific
//
//  Created by Oliver Short on 4/18/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//



#import "ViewController.h"
#import "CalculatorBrain.h"



@interface ViewController ()
{
    CalculatorBrain *brain;
}

@property(weak, nonatomic) IBOutlet UILabel *displayLabel;

-(IBAction)operandTapped:(UIButton*)sender;
-(IBAction)additionTapped:(UIButton*)sender;
-(IBAction)subtractionTapped:(UIButton*)sender;
-(IBAction)multiplicationTapped:(UIButton*)sender;
-(IBAction)divisionTapped:(UIButton*)sender;
-(IBAction)equalTapped:(UIButton*)sender;
-(IBAction)allClearTapped:(UIButton*)sender;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.displayLabel.text = @"0";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)operandTapped:(UIButton*)sender {
    if (!brain) {
        brain = [[CalculatorBrain alloc]init];
    }
    if([self.displayLabel.text isEqualToString:@"0"]){
        
        self.displayLabel.text = sender. titleLabel.text;
    }
    
    else {
        if([sender.titleLabel.text isEqualToString: @"."] && [self.displayLabel.text containsString:@"."]){
        
    }   else{
            if (brain.userIsTypingNumber ==YES){
                self.displayLabel.text = sender.titleLabel.text;
                brain = [[CalculatorBrain alloc]init];
            }else{
            self.displayLabel.text = [self.displayLabel.text stringByAppendingString:sender.titleLabel.text];
        }
    }
}
    
    
}
-(IBAction)additionTapped:(UIButton*)sender;{
    brain.operatorType = OperatorTypeAddition;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = @"0";
}
-(IBAction)subtractionTapped:(UIButton*)sender;{
    brain.operatorType = OperatorTypeSubtraction;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = @"0";
    
}
-(IBAction)multiplicationTapped:(UIButton*)sender;{
    brain.operatorType = OperatorTypeMultiplication;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = @"0";
    
}
-(IBAction)divisionTapped:(UIButton*)sender;{
    brain.operatorType = OperatorTypeDivision;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = @"0";
    
}
-(IBAction)equalTapped:(UIButton*)sender;{
    brain.operand2String = [self.displayLabel.text mutableCopy];
    brain.operand2 = [brain.operand2String floatValue];
    self.displayLabel.text = [brain executeOperationOnOperands];
    
    
    brain.userIsTypingNumber = YES;
    }


-(IBAction)allClearTapped:(UIButton*)sender;{
    self.displayLabel.text =@"0";
    //reset the brain
   
    
}

@end
