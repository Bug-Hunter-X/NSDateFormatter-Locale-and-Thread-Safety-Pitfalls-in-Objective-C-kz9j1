#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Solution:  Explicitly set locale and use thread-local formatters
        NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@