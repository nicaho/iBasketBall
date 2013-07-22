//
//  ViewController.m
//  iBasketBall
//
//  Created by dyage on 13-7-3.
//  Copyright (c) 2013年 dyage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)touchUpInside:sender{
    [UIView beginAnimations:nil context:nil];
    [UIView animateWithDuration:0.2
                          delay:1.0
                        options:UIViewAnimationOptionAllowUserInteraction|UIViewAnimationOptionCurveEaseInOut
                     animations:nil
                     completion:nil];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationsEnabled:YES];

    button.center = CGPointMake(30, 30);
    [UIView commitAnimations];
    
}

- (void)viewDidLoad
{

    ALog(@"alog");

    [self setImageView:@"meng.png"
                     x:30
                     y:30
                 width:50
                heigth:50
               ToViews:self];
    
    
    UIButton *buttonbtn = [self setButton:@"meng2.png"
                               buttonYype:UIButtonTypeInfoDark
                                        x:250
                                        y:300
                                    width:50
                                   heigth:50];
    
    [self addView:buttonbtn toSuperViews:self];
    
    [self setButton:buttonbtn
      withImageName:@"meng.png"
           forState:UIControlStateHighlighted];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    
    
    [button setFrame:CGRectMake(150, 200, 50, 50)];
    

    UIImage *image = UIImage_CREATE(@"meng.png")
    [button setBackgroundImage:image
                      forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(touchUpInside:)
     forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:button];
    
    
    if (ARC_ENABLED == 1) {
        ho(@"The file is");
    }
    else{
        NSLog(@"The file is not used by ARC");
    }
    

    NSLog(@"CurrentSystemVersion ：%@",CurrentSystemVersion);
    NSLog(@"CurrentLanguage : %@",CurrentLanguage);
    NSLog(@"BACKGROUND_COLOR : %@",BACKGROUND_COLOR);
    NSLog(@"isRetina : %i",isRetina);
    NSLog(@"iPhone5 : %i",iPhone5);
    NSLog(@"isPad : %i",isPad);
    NSLog(@"isPhone : %i",isPhone);
    
    NSLog(@"RGBCOLOR : %@",RGBCOLOR(245.0, 34.0, 89.0));
    NSLog(@"RGBACOLOR : %@",RGBACOLOR(231.4, 67.8, 90.67, 0.5));
    
    NSLog(@"%i",SYSTEM_VERSION_EQUAL_TO(@"6.1"));


    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
