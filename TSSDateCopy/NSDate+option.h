//
//  NSDate+weekDay.h
//  Calendar
//
//  Created by SHIYA Keita on 2013/07/03.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (option)
- (NSInteger) weekday;
- (NSInteger) day;
- (NSInteger) month;
// 短い曜日(例:火曜日ならば火など)を取得する
- (NSString*) stringShortweekday;
@end
