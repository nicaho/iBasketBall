//
//  UIView+UIControl.m
//  iBasketBall
//
//  Created by dyage on 13-7-4.
//  Copyright (c) 2013年 dyage. All rights reserved.
//

#import "UIViewController+Controls.h"

@implementation UIViewController (Controls)
#pragma mark - add or set image view 
//set UIImageView to view ,no matter what the class is kind of class of UIViewController or UIView 
- (void)setImageView:(NSString *)strImageNamed        //The same as the parameter of imageNamed:
                   x:(CGFloat)x                       //The x is equal to CGRectMake's x
                   y:(CGFloat)y                       //The y is equal to CGRectMake's y
               width:(CGFloat)width                   //The width  is equal to CGRectMake's width
              heigth:(CGFloat)height                  //The height is equal to CGRectMake's height
             ToViews:(id)views{                        //The views inherit from UIView
    UIImage *image = UIImage_CREATE(strImageNamed)
    UIImageView *imageView = UIImageView_CREATE(x, y, width, height)
    imageView.image = image;
    if ([views isKindOfClass:[UIViewController class]]) {
        [((UIViewController *)views).view addSubview:imageView];
    }
    if ([views isKindOfClass:[UIView class]]) {
        [((UIView *)views) addSubview:imageView];
        
    }
    RELEASE(imageView);
}
//set image view including image's name ,imageView's size and coordinate
- (UIImageView *)setImageView:(NSString *)strImageNamed        //The same as the parameter of imageNamed:
                   x:(CGFloat)x                                //The x is equal to CGRectMake's x
                   y:(CGFloat)y                                //The y is equal to CGRectMake's y
               width:(CGFloat)width                            //The width  is equal to CGRectMake's width
              heigth:(CGFloat)height                           //The height is equal to CGRectMake's height
{
    UIImage *image = UIImage_CREATE(strImageNamed)
    UIImageView *imageView = UIImageView_CREATE(x, y, width, height)
    imageView.image = image;
    return imageView;
}
#pragma mark - set button
//set button's backgroundImage ,buttonType ,and it's size and coordinate
- (UIButton *)setButton:(NSString *)strImageNamed                   //The same as the parameter of imageNamed:
             buttonYype:(UIButtonType)buttonType                    //The buttonType is button's buttonType 
                      x:(CGFloat)x                                //The x is equal to CGRectMake's x
                      y:(CGFloat)y                                //The y is equal to CGRectMake's y
                  width:(CGFloat)width                            //The width  is equal to CGRectMake's width
                 heigth:(CGFloat)height                           //The height is equal to CGRectMake's height
{
    UIImage *image2 = UIImage_CREATE(strImageNamed)
    UIButton *btn = [UIButton buttonWithType:buttonType];
    [btn setFrame:CGRectMake(x , y, width, height)];
    [btn setBackgroundImage:image2
                   forState:UIControlStateNormal];
    return btn;
}
//set button's background image for the state
- (void)setButton:(UIButton *)button
    withImageName:(NSString *)strImageNamed
         forState:(UIControlState)state{
    
    UIImage *iImage = UIImage_CREATE(strImageNamed)
    [button setBackgroundImage:iImage
                         forState:state];
}
#pragma mark - add view to superView
//add view to views ,the views inherit from UIView
- (void)addView:(id)subview
   toSuperViews:(id)superViews
{
    if ([superViews isKindOfClass:[UIViewController class]]) {
        [((UIViewController *)superViews).view addSubview:subview];
    }
    if ([superViews isKindOfClass:[UIView class]]) {
        [((UIView *)superViews) addSubview:subview];
    }
}

@end
