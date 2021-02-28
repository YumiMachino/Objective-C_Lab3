//
//  QuestionManager.h
//  Maths
//
//  Created by Yumi Machino on 2021/02/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;
- (instancetype)init;
- (void)timeOutput;
@end

NS_ASSUME_NONNULL_END
