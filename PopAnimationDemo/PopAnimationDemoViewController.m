//
//  PopAnimationDemoViewController.m
//  PopAnimationDemo
//
//  Created by Travis Palmer on 8/8/14.
//  Copyright (c) 2014 FullStack. All rights reserved.
//

#import "PopAnimationDemoViewController.h"
#import "pop/POP.h"

@interface PopAnimationDemoViewController ()

@end

@implementation PopAnimationDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = self.button.frame;
    frame.origin.y = self.view.frame.size.height + self.button.frame.size.height;
    frame.origin.x = 14;

    self.button.frame = frame;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    POPSpringAnimation *animation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPosition];
    CGFloat newX = self.view.bounds.size.width / 2;
    CGFloat newY = (self.view.bounds.size.height - self.button.frame.size.height);

    animation.springBounciness = 7;
    animation.springSpeed = 1;
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(newX, newY)];
    
    [self.button.layer pop_addAnimation:animation forKey:@"move"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
