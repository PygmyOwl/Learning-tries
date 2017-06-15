//
//  ViewController.m
//  UIButtonTest
//
//  Created by user on 30.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom]; // тип кнопки
    button.frame = CGRectMake(200, 200, 200, 200); // размер кнопки
    button.backgroundColor = [UIColor lightGrayColor]; // задний фон кнокпи
/*
    // вариант аттрибутов кнопки вариант 1
    // ___создание атрибутов шрифта
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:30],
                                  NSForegroundColorAttributeName: [UIColor orangeColor]};
    
    NSAttributedString *title = [[NSAttributedString alloc]
                                 initWithString:@"Button" attributes:attributes];
    [button setAttributedTitle: title forState:UIControlStateNormal];
    
    
    NSDictionary *attributes1 = @{NSFontAttributeName: [UIFont systemFontOfSize:20],
                                 NSForegroundColorAttributeName: [UIColor redColor]};
    
    NSAttributedString *title1 = [[NSAttributedString alloc]
                                 initWithString:@"ButtonPressed" attributes:attributes1];
    [button setAttributedTitle: title1 forState:UIControlStateHighlighted];
*/
    
  // вариант аттрибутов кнопки вариант 2
    [button setTitle:@"Button" forState:UIControlStateNormal]; // текст кнопки
    [button setTitle:@"Button pressed" forState:UIControlStateHighlighted]; // текст выдаётся во время нажатия и ихменяется цвет, который указан ниже
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal]; // цвет кнопки исходный
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted]; // цвет кнопки во время нажатия
    // отступы текста в пространстве кнопки
   // UIEdgeInsets insets = UIEdgeInsetsMake(100, 100, 0, 0);
   // button.titleEdgeInsets = insets;
    
    [self.view addSubview:button]; // вызов кнопки
    //вызов метода после нажатия кнопки
    [button addTarget:self action:@selector(actionTest:)  forControlEvents:UIControlEventTouchUpInside];
    //вызов метода когда палец нажал на кнопку но отпустил вне её границ
    [button addTarget:self action:@selector(actionTestOutside:)
                                                          forControlEvents:UIControlEventTouchUpOutside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
// метод, который будет вызван при нажатии кнопки
- (void) actionTest:(UIButton *) button1 {
    
    NSLog(@"Button pressed!");
    
}

- (void) actionTestOutside:(UIButton *) button2 event:(UIEvent *) event {
    
    NSLog(@"Button pressed outside!");
    
}

- (IBAction) actionTest2:(UIButton *) sender {
    NSLog(@"actionTest2 tag = %d", sender.tag);

    self.indicatorLabel.text = [NSString stringWithFormat:@"%d", sender.tag];
}

- (IBAction) actionTestTouchDown:(UIButton *) sender {
    
}

@end
