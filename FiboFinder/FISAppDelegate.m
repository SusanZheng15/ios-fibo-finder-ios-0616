//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption
{
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index
{
        NSMutableArray *sequence = [NSMutableArray new];
        NSUInteger fibo = 0;
    
        for (NSUInteger i = 0; i < index + 1; i++)
        {
            if (i == 0)
            {
                [sequence addObject:@0];
            }
             else if (i == 1)
             {
                [sequence addObject:@1];
             }
             else
             {
                 NSUInteger first = [[sequence objectAtIndex:[sequence count] - 1] integerValue];
                 NSUInteger second = [[sequence objectAtIndex:[sequence count] - 2] integerValue];
                 fibo = first + second;
                 NSNumber *addedValues = @(fibo);
                 [sequence addObject: addedValues];
             }
        }
    
    NSLog(@"%@", sequence);

return sequence;
}
@end
