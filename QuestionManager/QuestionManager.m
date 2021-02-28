//
//  QuestionManager.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/28.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}


// return total time and average time     NSTimeInterval difference = [_startTime timeIntervalSinceDate:_endTime];
- (void)timeOutput {
    //// questions -= [Addition question] <- has answer time inside
    NSInteger totalTime = 0;
    for (int i = 0; i < [_questions count]; i++) {
        totalTime = totalTime + [[_questions objectAtIndex: i] timeToAnswer];
    }
    NSInteger averageTime = totalTime / [_questions count];
    NSLog(@"total time: %lds, average time: %lds", (long)totalTime, (long)averageTime);
    
}


@end
