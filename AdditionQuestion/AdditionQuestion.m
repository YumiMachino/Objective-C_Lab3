//
//  AdditionalQuestion.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/24.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

/// Generate a random math question
/// Handle the answer to the question

- (instancetype)init{
    if (self = [super init]) {
        // generate 2 random numbers here
        NSInteger randNumX = arc4random_uniform(100);
        NSInteger randNumY = arc4random_uniform(100);

        _answer = randNumX + randNumY;
        _question = [NSString stringWithFormat:@"%ld + %ld ?", (long)randNumX, (long)randNumY];
    }
    return self;
}

@end
