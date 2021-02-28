//
//  QuestionFactory.h
//  Maths
//
//  Created by Yumi Machino on 2021/02/28.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray* questionSubclassNames;

- (Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
