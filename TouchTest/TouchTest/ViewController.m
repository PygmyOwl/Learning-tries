//
//  ViewController.m
//  TouchTest
//
//  Created by user on 29.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(weak, nonatomic)UIView *draggingView;
@property(assign, nonatomic)CGPoint touchOffset;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for(int i = 0; i < 0; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10 + 110*i, 100, 100, 100)];
        view.backgroundColor = [self randomColor];
        
        [self.view addSubview:view];
    }
    
   // self.view.multipleTouchEnabled = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (void)logTouches:(NSSet*)touches withMethod:(NSString*)methodName {
    NSMutableString *string =[NSMutableString stringWithString:methodName];
    for(UITouch *touch in touches){
        CGPoint point = [touch locationInView:self.view];
        [string appendFormat: @" %@", NSStringFromCGPoint(point)];
    }
    NSLog(@"%@", string);
}

- (UIColor*) randomColor {
    CGFloat r = (float)(arc4random() % 256) / 255.f;
    CGFloat g = (float)(arc4random() % 256) / 255.f;
    CGFloat b = (float)(arc4random() % 256) / 255.f;

    return [UIColor colorWithRed: r green:g blue: b alpha:1.f];
}

#pragma mark - Touches

- (void)touchesBegan:(NSSet<UITouch *> *)touches   withEvent:(UIEvent *)event {
    [self logTouches:touches withMethod:@"touchesBegan"];
    UITouch *touch = [touches anyObject];
    CGPoint pointOnMainView  = [touch locationInView:self.view];
    UIView  *view  = [self.view hitTest:pointOnMainView withEvent:event];
    if (![view isEqual:self.view]) {
        self.draggingView = view;
        [self.view bringSubviewToFront:self.draggingView];
        CGPoint touchPoint = [ touch locationInView:self.draggingView];
        self.touchOffset = CGPointMake(CGRectGetMidX(self.draggingView.bounds) - touchPoint.x,
                                       CGRectGetMidY(self.draggingView.bounds) - touchPoint.y );
       // self.touchPoint = [touch locationInView:self.draggingView];
        //учёт смещения при захвате элемента курсором и перемещение элемента по экрану
        
        [UIView animateWithDuration:0.3
                          animations:^{
                              self.draggingView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
                              self.draggingView.alpha = 0.3f;
                          }];
        } else {
        self.draggingView = nil;
    }
    
    
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches    withEvent:(UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesMoved"];
    //реализация возможности перемещения элемента по экрану с помощью курсора.
    if (self.draggingView) {
        UITouch *touch = [touches anyObject];
        CGPoint pointOnMainView = [touch locationInView:self.view];
        self.draggingView.center = pointOnMainView;
        CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
                                         pointOnMainView.y + self.touchOffset.y);
        self.draggingView.center = correction;
    }
    
}

- (void) onTouchesEnded {
    self.draggingView = nil;
    [UIView animateWithDuration:0.3
                     animations:^ {
                         self.draggingView.transform = CGAffineTransformIdentity;
                         self.draggingView.alpha = 1.f;
                     }];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches    withEvent:(UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesEnded"];
    
    [self onTouchesEnded];
    
}


- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesCancelled"];
    
    [self onTouchesEnded];
}

@end
