# NSAttributedStringHelper
A collection of helper methods to make NSAttributedStrings a little bit easier and more convenient to deal with. All methods have the "ash_" prefix to fulfill to category best practices.

## Examples
NSString objects have the very convenient method
```objective-c
[stringVar stringByAppendingString:@""]
```
However, if you want to append an attributed string to another, you have to create a NSMutableAttributedString. The given convenience methods add this possibility to NSAttributedStrings:
```objective-c
[attributedStringVar ash_attributedStringByAppendingAttributedString:anotherAttributedStringVar]
```
Another example is the handling of UIFontTextStyles, e.g. UIFontTextStyleBody. You can use those styles to retrieve a UIFont, but it is decoupled from NSAttributedStrings. Therefore, NSAttributedStringHelper contains methods like
```objective-c
+ (NSDictionary *)ash_attributesForTextStyle:(ASH_UIFontTextStyle)textStyle;
+ (NSAttributedString *)ash_attributedStringWithString:(NSString *)string textStyle:(ASH_UIFontTextStyle)style;
```

## Contribution
The current collection of methods is pretty small and contribution is very welcome. Feel free to add your own methods and send pull requests.