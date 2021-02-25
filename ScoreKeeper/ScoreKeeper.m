//
//  ScoreKeeper.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/25.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
// track the number of right and wrong answer
// generate a string representation of the score for logging

- (instancetype)initWithRightAnswer: (NSInteger) rightAnswer AndWith: (NSInteger) wrongAnswer;
{
    self = [super init];
    if (self) {
        _rightAnswer = rightAnswer;
        _wrongAnswer = wrongAnswer;
    }
    return self;
}

- (void) printScore {
    NSInteger total = _rightAnswer + _wrongAnswer;
    NSInteger percent = (_rightAnswer * 100) / total;
    NSString *sign = @"%";

    NSLog(@"score: %ld right, %ld wrong ---- %ld %@", (long)_rightAnswer, (long)_wrongAnswer, (long)percent, sign);
}

@end
