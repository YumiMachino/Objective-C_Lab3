//
//  AdditionalQuestion.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/24.
//

#import "Question.h"

@implementation Question

/// Generate a random math question
/// Handle the answer to the question

- (instancetype)init{
    if (self = [super init]) {
        // generate 2 random numbers here
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);

        /// set the current date as start time
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}


//NSDate format: Sun Feb 28 10:43:41 2021
//// return time difference between startTime and endTime;
- (NSTimeInterval) timeToAnswer {
    NSTimeInterval difference = [_endTime timeIntervalSinceDate:_startTime];
    return difference;
}

- (void) generateQuestion {
    
}



@end
