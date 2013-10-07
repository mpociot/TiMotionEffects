//
//  TiUIView+MotionEffects.m
//  TiMotionEffects
//
//  Created by Marcel Pociot on 07.10.13.
//
//

#import "TiUIView+MotionEffects.h"

@implementation TiUIView (MotionEffects)

-(void)setHorizontalMotionEffect_:(id)args
{
    NSLog(@"Setting horizontal motion effect");
    CGFloat min = [TiUtils floatValue:[args objectForKey:@"min"]];
    CGFloat max = [TiUtils floatValue:[args objectForKey:@"max"]];
    UIInterpolatingMotionEffect *effect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    effect.minimumRelativeValue = @(min);
    effect.maximumRelativeValue = @(max);

    [self addMotionEffect:effect];
}

-(void)setVerticalMotionEffect_:(id)args
{
    NSLog(@"Setting vertical motion effect");
    CGFloat min = [TiUtils floatValue:[args objectForKey:@"min"]];
    CGFloat max = [TiUtils floatValue:[args objectForKey:@"max"]];
    UIInterpolatingMotionEffect *effect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    effect.minimumRelativeValue = @(min);
    effect.maximumRelativeValue = @(max);
    [self addMotionEffect:effect];
}

@end
