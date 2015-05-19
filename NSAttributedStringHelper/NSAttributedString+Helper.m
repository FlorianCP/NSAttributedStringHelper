//
//  NSAttributedString+Helper.m
//  NSAttributedStringHelperDemo
//
//  Created by Florian Rath on 19.05.15.
//  Copyright (c) 2015 Codepool GmbH. All rights reserved.
//

#import "NSAttributedString+Helper.h"


@implementation NSAttributedString (Helper)

#pragma mark - Public

- (NSAttributedString *)ash_attributedStringByAppendingAttributedString:(NSAttributedString *)attributedString {
    NSMutableAttributedString *mutAttr = [NSMutableAttributedString new];
    [mutAttr appendAttributedString:self];
    [mutAttr appendAttributedString:attributedString];
    return [mutAttr copy];
}

+ (NSDictionary *)ash_attributesForTextStyle:(ASH_UIFontTextStyle)textStyle {
    NSString *style = [NSAttributedString ash_textStyleForTextStyle:textStyle];
    UIFont *font = [UIFont preferredFontForTextStyle:style];
    NSDictionary *attribs = @{
                              NSFontAttributeName : font
                              };
    return attribs;
}

+ (NSDictionary *)ash_attributesForFont:(UIFont *)font textColor:(UIColor *)color underlineStyle:(NSUnderlineStyle)underlineStyle {
    NSDictionary *attribs = @{
                              NSFontAttributeName : font,
                              NSForegroundColorAttributeName : color,
                              NSUnderlineStyleAttributeName : @(underlineStyle)
                              };
    
    return attribs;
}

+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string attributes:(NSDictionary *)attributes {
    NSAttributedString *attr = [[NSAttributedString alloc] initWithString:string attributes:attributes];
    return attr;
}

+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string textStyle:(ASH_UIFontTextStyle)style {
    return [NSAttributedString ash_attributedStringWithString:string
                                                    textStyle:style
                                                    textColor:[UIColor blackColor]];
}

+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string textStyle:(ASH_UIFontTextStyle)style textColor:(UIColor *)textColor {
    NSMutableDictionary *attributes = [[NSAttributedString ash_attributesForTextStyle:style] mutableCopy];
    attributes[NSForegroundColorAttributeName] = textColor;
    NSAttributedString *attr = [[NSAttributedString alloc] initWithString:string attributes:attributes];
    return attr;
}

#pragma mark - Private

+ (NSString *)ash_textStyleForTextStyle:(ASH_UIFontTextStyle)style {
    switch (style)
    {
        case ASH_UIFontTextStyle_Body:
        {
            return UIFontTextStyleBody;
        }
        case ASH_UIFontTextStyle_Headline:
        {
            return UIFontTextStyleHeadline;
        }
        case ASH_UIFontTextStyle_Caption1:
        {
            return UIFontTextStyleCaption1;
        }
        case ASH_UIFontTextStyle_Caption2:
        {
            return UIFontTextStyleCaption2;
        }
        case ASH_UIFontTextStyle_Footnote:
        {
            return UIFontTextStyleFootnote;
        }
        case ASH_UIFontTextStyle_Subheadline:
        {
            return UIFontTextStyleSubheadline;
        }
            
        default:
        {
            NSAssert(NO, @"Could not find specified ASH_UIFontTextStyle!");
            break;
        }
    }
    return nil;
}

@end
