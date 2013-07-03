//
//  TSSViewController.m
//  TSSDateCopy
//
//  Created by SHIYA Keita on 2013/07/03.
//  Copyright (c) 2013年 SHIYA Keita. All rights reserved.
//

#import "TSSViewController.h"
#import "NSDate+option.h"

@implementation TSSViewController

- (IBAction)pressCopyButton:(id)sender {
    NSMutableString *mStr = [NSMutableString string];
    for (NSDate *date in [self.calendarView selectedDates]) {
        [mStr appendString:[NSString stringWithFormat:@"%d/%d(%@)\n",date.month,date.day,date.stringShortweekday]];
    }
    
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    [pasteboard setValue:mStr forPasteboardType:@"public.text"];
    
    UIAlertView *alert =[[UIAlertView alloc]
                         initWithTitle:@"コピー"
                         message:@"クリップボードにコピーしました"
                         delegate:nil
                         cancelButtonTitle:nil
                         otherButtonTitles:@"OK", nil
                         ];
    [alert show];
}

- (IBAction)pressResetButton:(id)sender {
    [self.calendarView reset];
}

@end
