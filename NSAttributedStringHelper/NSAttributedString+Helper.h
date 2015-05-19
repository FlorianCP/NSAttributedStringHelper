//
//  NSAttributedString+Helper.h
//  NSAttributedStringHelperDemo
//
//  Created by Florian Rath on 19.05.15.
//  Copyright (c) 2015 Codepool GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;



typedef NS_ENUM(NSInteger, ASH_UIFontTextStyle)
{
    ASH_UIFontTextStyle_Headline,
    ASH_UIFontTextStyle_Subheadline,
    ASH_UIFontTextStyle_Body,
    ASH_UIFontTextStyle_Footnote,
    ASH_UIFontTextStyle_Caption1,
    ASH_UIFontTextStyle_Caption2
};

@interface NSAttributedString (Helper)

- (NSAttributedString *)ash_attributedStringByAppendingAttributedString:(NSAttributedString *)attributedString;

+ (NSDictionary *)ash_attributesForTextStyle:(ASH_UIFontTextStyle)textStyle;

+ (NSDictionary *)ash_attributesForFont:(UIFont *)font textColor:(UIColor *)color underlineStyle:(NSUnderlineStyle)underlineStyle;

+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string attributes:(NSDictionary *)attributes;

+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string textStyle:(ASH_UIFontTextStyle)style;
+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string textStyle:(ASH_UIFontTextStyle)style textColor:(UIColor *)textColor;

@end
