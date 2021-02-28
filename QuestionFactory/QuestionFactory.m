//
//  QuestionFactory.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/28.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

-(instancetype)init {
    if (self = [super init]) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion {
    NSLog(@"selecting random question hereeeeee");
    NSInteger randomInt = arc4random_uniform([_questionSubclassNames count]);
    NSString *pickedQuestion = _questionSubclassNames[randomInt];
    return [[NSClassFromString(pickedQuestion) alloc]init];
}


@end
