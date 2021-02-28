//
//  main.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/24.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL game_on = YES;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]initWithRightAnswer:0 AndWith:0];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        NSString *user_input = [InputHandler get_user_input];
        if (user_input == NULL) {
            NSLog(@"Enter Something!");
        } else {
            NSLog(@"Your input: %@", user_input);
            
            while (game_on == YES) {
                
                Question *pickedQuestion = [questionFactory generateRandomQuestion];

                /// add question to the array
                [[questionManager questions]addObject:pickedQuestion];

                NSLog(@"question: %@ (hit 'q' to quit!) ", [pickedQuestion question]);
                NSString *user_second_input = [InputHandler get_user_input];
                if ([user_second_input isEqualToString: @"q"]) {
                    game_on = NO;
                    [scoreKeeper printScore];
                    NSLog(@"Bye!");
                    continue;
                }
                
                NSInteger converted_input = [user_second_input intValue];
                if (converted_input == [pickedQuestion answer]) {
                    NSLog(@"Right!");
                    [scoreKeeper setRightAnswer:[scoreKeeper rightAnswer] + 1];
                    [questionManager timeOutput];
                } else  {
                    NSLog(@"Wrong!");
                    [scoreKeeper setWrongAnswer:[scoreKeeper wrongAnswer] + 1];
                    [questionManager timeOutput];
                }
            }
        }
    }
    return 0;
}
