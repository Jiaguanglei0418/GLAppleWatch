//
//  InterfaceController.m
//  watchExtention Extension
//
//  Created by jiaguanglei on 16/2/19.
//  Copyright © 2016年 roseonly. All rights reserved.
//
/**
 *  watch应用架构分为三部分:
 *
 *  1. iOS App
 *  2. watchKit Extention
 *  3. watchKit App
 ---------------------------------
    1 和 2 通过应用扩展关联的;
    2 和 3 通过watchKit关联的;
 ---------------------------------
 
 1. ios应用看起来只是一个空壳App
 2. watchExtention中有: 所有与WatchApp相关代码, watchKit控件的添加 与 watchExtention无关;
 3. watchApp只有1个storyboard, 只负责添加布局相关的控件和界面, 代码与它毫无关系;
 4. 图片资源存储地点, 在3个部分都有;
 ---------------------------------
 AppleWatch应用必须用storyboard开发,
 
 OS1: iWatch开发总结:
 1. 所有操作都是在手机中完成(通过应用扩展), iWatch界面跳转, 信息展示都是通过手机中的应用扩展来传递信息和操作信号来完成;
 2. 在苹果表上的所有操作, 也是将信息传递给应用扩展, 在手机中完成处理;
 
 */
#import "InterfaceController.h"

/**
 *  InterfaceController生命周期
 
 */
@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *titleLabel;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *btn;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *iconView;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
     NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
    // Configure interface objects here.
    
//    WKInterfaceSemanticContentAttribute
    [self setupLabel];
    [self setupImage];
    [self setupBtn];
}

#pragma mark - 父类方法
- (void)superMethod
{
    /**
     - (instancetype)init NS_UNAVAILABLE;
     
     - (void)setHidden:(BOOL)hidden;
     - (void)setAlpha:(CGFloat)alpha;
     - (void)setSemanticContentAttribute:(WKInterfaceSemanticContentAttribute)semanticContentAttribute WK_AVAILABLE_WATCHOS_ONLY(2.1);
     
     - (void)setHorizontalAlignment:(WKInterfaceObjectHorizontalAlignment)horizontalAlignment WK_AVAILABLE_WATCHOS_ONLY(2.0);
     - (void)setVerticalAlignment:(WKInterfaceObjectVerticalAlignment)verticalAlignment WK_AVAILABLE_WATCHOS_ONLY(2.0);
     
     - (void)setWidth:(CGFloat)width;
     - (void)setHeight:(CGFloat)height;
     - (void)setRelativeWidth:(CGFloat)width withAdjustment:(CGFloat)adjustment WK_AVAILABLE_WATCHOS_ONLY(2.0);
     - (void)setRelativeHeight:(CGFloat)height withAdjustment:(CGFloat)adjustment WK_AVAILABLE_WATCHOS_ONLY(2.0);
     
     - (void)sizeToFitWidth WK_AVAILABLE_WATCHOS_ONLY(2.0);
     - (void)sizeToFitHeight WK_AVAILABLE_WATCHOS_ONLY(2.0);
     */
    
}


#pragma mark - 基础控件
/**
 *  设置btn
 */
- (void)setupBtn
{
    /**
     - (void)setTitle:(nullable NSString *)title;
     - (void)setAttributedTitle:(nullable NSAttributedString *)attributedTitle;
     
     - (void)setBackgroundColor:(nullable UIColor *)color;
     - (void)setBackgroundImage:(nullable UIImage *)image;
     - (void)setBackgroundImageData:(nullable NSData *)imageData;
     - (void)setBackgroundImageNamed:(nullable NSString *)imageName;
     
     - (void)setEnabled:(BOOL)enabled;
     */
    [self.btn setTitle:@"btn"];
    [self.btn setBackgroundImage:[UIImage imageNamed:@"2.jpg"]];
//    [self.btn setBackgroundColor:[UIColor yellowColor]];
    [self.btn setEnabled:YES];
    
}

/**
 *  设置imageView
 */
- (void)setupImage
{
    /**
     - (void)setImage:(nullable UIImage *)image;
     - (void)setImageData:(nullable NSData *)imageData;
     - (void)setImageNamed:(nullable NSString *)imageName;
     
     - (void)setTintColor:(nullable UIColor *)tintColor;
     */
//    [self.iconView setImageNamed:@"2.jpg"];
//    [self.iconView setImage:[UIImage imageNamed:@"2.jpg"]];
//    [self.iconView setImageData:UIImagePNGRepresentation([UIImage imageNamed:@"2.jpg"])];
    
}

/**
 *  设置label
 */
- (void)setupLabel
{
    // WKInterfaceLabel
    [self.titleLabel setText:@"123413243124234324321"];
    [self.titleLabel setTextColor:[UIColor redColor]];
    //    [self.titleLabel setAttributedText:<#(nullable NSAttributedString *)#>];
    [self.titleLabel sizeToFitWidth];
    [self.titleLabel setWidth:200];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
     NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

- (void)didAppear
{
    [super didAppear];
    
     NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}


- (void)willDisappear
{
    [super willDisappear];
    
     NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    
    NSLog(@"%s --- %d", __FUNCTION__, __LINE__);
}

@end



