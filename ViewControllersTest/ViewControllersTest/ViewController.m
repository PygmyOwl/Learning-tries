//
//  ViewController.m
//  ViewControllersTest
//
//  Created by user on 24.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark Loading

- (void) loadView {
    [super loadView]; // вызов родительского метода loadView обязателен для адекватной работы экрана
    
    NSLog(@"loadView");

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad");
    self.view.backgroundColor = [UIColor redColor];
    
    // определение в консоли ipad or iphone
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
        NSLog(@"iPad");
    }
    else{
        NSLog(@"iPhone");
    }
}

#pragma mark Views

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");

}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];

    NSLog(@"viewDidLayoutSubviews");
}

#pragma mark Orientation
//выравнивание по ориентации
- (BOOL)shouldAutorotate {
    return NO;
}

//поддержка ориентаций - вписаны маски ориентаций
- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationLandscapeLeft | UIInterfaceOrientationMaskPortrait;
}

//это 
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

//вывод на консоль - номера положения экрана, данный вид показывает с какого на какое положение переведен экран
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"willRotate from %ld to %ld",self.interfaceOrientation, toInterfaceOrientation);
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    NSLog(@"didRotatefrom %ld to %ld", self.interfaceOrientation, fromInterfaceOrientation);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}


@end
