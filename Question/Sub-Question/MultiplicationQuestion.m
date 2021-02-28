//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/28.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    // set super.answer and question here
    [super setAnswer:[super rightValue] * [super leftValue]];
    [super setQuestion: [NSString stringWithFormat:@"%ld * %ld ?", [super rightValue], [super leftValue]]];
}


@end
