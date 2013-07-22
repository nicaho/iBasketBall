//
//  UIView+UIControl.h
//  iBasketBall
//
//  Created by dyage on 13-7-4.
//  Copyright (c) 2013年 dyage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Controls)

//set UIImageView to view ,no matter what the class is kind of class of UIViewController or UIView 
- (void)setImageView:(NSString *)strImageNamed        //The same as the parameter of imageNamed:
                   x:(CGFloat)x                       //The x is equal to CGRectMake's x
                   y:(CGFloat)y                       //The y is equal to CGRectMake's y
               width:(CGFloat)width                   //The width  is equal to CGRectMake's width
              heigth:(CGFloat)height                  //The height is equal to CGRectMake's height
             ToViews:(id)views;                       //The views inherit from UIView

//set image view including image's name ,imageView's size and coordinate
- (UIImageView *)setImageView:(NSString *)strImageNamed        //The same as the parameter of imageNamed:
                            x:(CGFloat)x                                //The x is equal to CGRectMake's x
                            y:(CGFloat)y                                //The y is equal to CGRectMake's y
                        width:(CGFloat)width                            //The width  is equal to CGRectMake's width
                       heigth:(CGFloat)height;                          //The height is equal to CGRectMake's height


//set button's backgroundImage ,buttonType ,and it's size and coordinate
- (UIButton *)setButton:(NSString *)strImageNamed                   //The same as the parameter of imageNamed:
             buttonYype:(UIButtonType)buttonType                    //The buttonType is button's buttonType
                      x:(CGFloat)x                                //The x is equal to CGRectMake's x
                      y:(CGFloat)y                                //The y is equal to CGRectMake's y
                  width:(CGFloat)width                            //The width  is equal to CGRectMake's width
                 heigth:(CGFloat)height;                          //The height is equal to CGRectMake's height
//set button's background image for the state
- (void)setButton:(UIButton *)button
    withImageName:(NSString *)strImageNamed
         forState:(UIControlState)state;

//add view to views ,the views inherit from UIView
- (void)addView:(id)subview
   toSuperViews:(id)superViews;                   //The views inherit from UIView
@end
