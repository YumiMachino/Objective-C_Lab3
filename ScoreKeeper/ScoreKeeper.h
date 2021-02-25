//
//  ScoreKeeper.h
//  Maths
//
//  Created by Yumi Machino on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property NSInteger rightAnswer;
@property NSInteger wrongAnswer;

- (instancetype)initWithRightAnswer: (NSInteger) rightAnswer AndWith: (NSInteger) wrongAnswer;
- (void) printScore;
@end

NS_ASSUME_NONNULL_END
