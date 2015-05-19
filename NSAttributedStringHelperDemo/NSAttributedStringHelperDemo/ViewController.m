//
//  ViewController.m
//  NSAttributedStringHelperDemo
//
//  Created by Florian Rath on 19.05.15.
//  Copyright (c) 2015 Codepool GmbH. All rights reserved.
//

#import "ViewController.h"

#import "NSAttributedStringHelper.h"



@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *headlineString = @"Welcome to the NSAttributedStringHelper Demo App!";
    NSDictionary *headlineAttribs = @{
                                      NSFontAttributeName : [UIFont boldSystemFontOfSize:20.0]
                                      };
    NSAttributedString *headline = [[NSAttributedString alloc] initWithString:headlineString
                                                                   attributes:headlineAttribs];
    
    
    NSString *contentString = @"\n\nThis is just a small project to make NSAttributedStrings a little bit less intimidating. It adds methods which we lazy guys are used to from NSStrings to NSAttributedStrings (e.g. [attributedString attributedStringByAppendingAttributedString:attr]).";
    NSDictionary *contentAttribs = [NSAttributedString ash_attributesForTextStyle:ASH_UIFontTextStyle_Body];
    NSAttributedString *content = [[NSAttributedString alloc] initWithString:contentString
                                                                  attributes:contentAttribs];
    
    NSString *otherContentString = @"\n\nPlease look at the demo for a few use cases on how to use the helper methods of this class.";
    NSDictionary *otherContentAttribs = [NSAttributedString ash_attributesForFont:[UIFont systemFontOfSize:17.0]
                                                                        textColor:[UIColor darkGrayColor]
                                                                   underlineStyle:NSUnderlineStyleSingle];
    NSAttributedString *otherContent = [NSAttributedString ash_attributedStringWithString:otherContentString attributes:otherContentAttribs];
    
    NSString *lazynessString = @"\n\nActually, this isn't even about being lazy. These are just convenience methods, giving the developer a better pace at work and saving him from making mistakes by having a proven class for handling common NSAttributedString scenarios.";
    NSAttributedString *lazyness = [NSAttributedString ash_attributedStringWithString:lazynessString
                                                                            textStyle:ASH_UIFontTextStyle_Caption2
                                                                            textColor:[UIColor grayColor]];
    
    NSAttributedString *fullContent = [[[headline ash_attributedStringByAppendingAttributedString:content]
                                       ash_attributedStringByAppendingAttributedString:otherContent]
                                       ash_attributedStringByAppendingAttributedString:lazyness];
    
    self.label.attributedText = fullContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
