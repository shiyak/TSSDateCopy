//
//  NSDate+weekDay.m
//  Calendar
//
//  Created by SHIYA Keita on 2013/07/03.
//
//

#import "NSDate+option.h"

@implementation NSDate (option)

- (NSInteger) weekday {
    NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* comps = [calendar components:NSWeekdayCalendarUnit
                                          fromDate:self];
    return comps.weekday;
}

- (NSInteger) day {
    NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* comps = [calendar components:NSDayCalendarUnit
                                          fromDate:self];
    return comps.day;
}

- (NSInteger) month {
    NSCalendar* calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents* comps = [calendar components:NSMonthCalendarUnit
                                          fromDate:self];
    return comps.month;
}

- (NSString*) stringShortweekday {
    NSArray *weekDayStrings = @[@"日", @"月", @"火", @"水", @"木", @"金", @"土"];
    NSInteger index = [self weekday];
    return weekDayStrings[index-1];
}

@end
