//
//  AdditionalQuestion.h
//  Maths
//
//  Created by Yumi Machino on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property(nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval) timeToAnswer;
- (void) generateQuestion;

@end

NS_ASSUME_NONNULL_END
