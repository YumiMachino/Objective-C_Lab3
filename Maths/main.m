//
//  main.m
//  Maths
//
//  Created by Yumi Machino on 2021/02/24.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL game_on = YES;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]initWithRightAnswer:0 AndWith:0];
        
        NSString *user_input = [InputHandler get_user_input];
        if (user_input == NULL) {
            NSLog(@"Enter Something!");
        } else {
            NSLog(@"Your input: %@", user_input);
            
            while (game_on == YES) {
                /// creating an instance, allocating memory size of the object
                AdditionQuestion *addition_question = [[AdditionQuestion alloc] init];
                NSLog(@"question: %@ (hit 'q' to quit!) ", [addition_question question]);
                NSString *user_second_input = [InputHandler get_user_input];
                if ([user_second_input isEqualToString: @"q"]) {
                    game_on = NO;
                    [scoreKeeper printScore];
                    NSLog(@"Bye!");
                    continue;
                }
                
                NSInteger converted_input = [user_second_input intValue];
                if (converted_input == [addition_question answer]) {
                    NSLog(@"Right!");
                    [scoreKeeper setRightAnswer:[scoreKeeper rightAnswer] + 1];
                } else  {
                    NSLog(@"Wrong!");
                    [scoreKeeper setWrongAnswer:[scoreKeeper wrongAnswer] + 1];
                }
            }
        }
    }
    return 0;
}
