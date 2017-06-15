//
//  ViewController.m
//  GesturesTest
//
//  Created by user on 29.11.16.
//  Copyright © 2016 Abdushev Sergey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate> //обьявление делегата для класса, дабы снять варнинги и сказать классу, что этот делегат действительно существует.
//________ создание свойства для рандомного изменения цвета.
@property (weak, nonatomic) UIView *testView;
//________ создание свойства для плавного увеличения масштаба
@property (assign, nonatomic) CGFloat testViewScale;
//________ создание свойства для плавной работы вращения
@property (assign, nonatomic) CGFloat testViewRotation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //_____ таким образом мы создаём обьект и размещаем его на экране
    UIView *view = [[UIView alloc] initWithFrame:
                    CGRectMake(CGRectGetMidX(self.view.bounds) - 50,
                               CGRectGetMidY(self.view.bounds) - 50,
                               100, 100)];
    //____ это фиксация размера и координатов относительно сторон
    view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin
    |   UIViewAutoresizingFlexibleTopMargin  | UIViewAutoresizingFlexibleBottomMargin;
    //____ это настройки базового цвета элемента
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    self.testView = view;
    
    //______________________ реагирование на одиночный тап
    UITapGestureRecognizer *tapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleTap:)];
    
    //tapGesture.numberOfTapsRequired = 2; // количество тапов для активации.
    //tapGesture.numberOfTouchesRequired = 2; // количество прикосновений ( в смысле 2 пальца).
    [self.view addGestureRecognizer:tapGesture];

    //_______________________реагирование на двойной тап
    
    UITapGestureRecognizer *doubleTapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleDoubleTap:)];
    doubleTapGesture.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:doubleTapGesture];
    
    //_______________________реагирование на двойной тач + tap
   
    [tapGesture requireGestureRecognizerToFail:doubleTapGesture];
    [tapGesture requireGestureRecognizerToFail:doubleTapGesture];
    
    UITapGestureRecognizer *doubleTapDoubleTouchGesture =
    [[ UITapGestureRecognizer alloc] initWithTarget:self
                                             action:@selector(handleDoubleTapDoubleTouch:)];
    doubleTapDoubleTouchGesture.numberOfTapsRequired    = 2;
    doubleTapDoubleTouchGesture.numberOfTouchesRequired = 2;
    
    [self.view addGestureRecognizer:doubleTapDoubleTouchGesture];
    
    UIPinchGestureRecognizer *pinchGesture =
    [[UIPinchGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(handlePinch:)];
    pinchGesture.delegate = self; // этот делегат говорит о том, что этот метод пользуется приоритетом
    [self.view addGestureRecognizer:pinchGesture];
    //____ создание обьекта класса
    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc]
                                                    initWithTarget:self
                                                    action:@selector(handleRotation:)];
    rotationGesture.delegate = self; // этот делегат говорит о том, что метод пользуется приоритетом
    [self.view addGestureRecognizer:rotationGesture];
    
    UIPanGestureRecognizer *panGesture =
    [[UIPanGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handlePan:)];
    [self.view addGestureRecognizer:panGesture];
    
    UISwipeGestureRecognizer *verticalSwipeGesture =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(handleVerSwipe:)];
    verticalSwipeGesture.direction = UISwipeGestureRecognizerDirectionDown |         UISwipeGestureRecognizerDirectionUp;
    verticalSwipeGesture.delegate = self;
    [self.view addGestureRecognizer:verticalSwipeGesture];
    
    UISwipeGestureRecognizer *horizontalSwipeGesture =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(handleHorSwipe:)];
    horizontalSwipeGesture.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
    horizontalSwipeGesture.delegate = self;
    [self.view addGestureRecognizer:horizontalSwipeGesture];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Methods

 //______ метод для создания рандомного создания цвета, вынесенный отдельно
- (UIColor*) randomColor {
    
    CGFloat r = (float)(arc4random() % 256) / 255.f;
    CGFloat g = (float)(arc4random() % 256) / 255.f;
    CGFloat b = (float)(arc4random() % 256) / 255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (void) handleTap:(UITapGestureRecognizer*)tapGesture {
    
    NSLog(@"Tap: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    self.testView.backgroundColor = [self randomColor]; // переопределение в методе метода рандом цвета
}

- (void) handleDoubleTap:(UITapGestureRecognizer*)tapGesture {
    
    NSLog(@"Double tap: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, 1.2f, 1.2f);
    
    [UIView animateWithDuration: 0.3
                     animations:^ {
                          self.testView.transform = newTransform;
                      }];
    //_____ 6. Условие для данного даблтапа.
    self.testViewScale = 1.2f;
    
}

- (void) handleDoubleTapDoubleTouch:(UITapGestureRecognizer*)tapGesture {
    
    NSLog(@"DoubleTapDoubleTouch: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, 0.8f, 0.8f);
    
    [UIView animateWithDuration: 0.3
                     animations:^ {
                         self.testView.transform = newTransform;
                     }];
    //_____ 5. Масштаб для данного тап-тач
    self.testViewScale = 0.8f;
}

- (void) handlePinch:(UIPinchGestureRecognizer*)pinchGesture {
    
    NSLog(@"handlePinch %1.3f", pinchGesture.scale);
    //_____ 4.Условие для установки базового масштаба
    if (pinchGesture.state == UIGestureRecognizerStateBegan) {
        self.testViewScale = 1.f;
    }
    //_______из-за того, что при увеличении масштаб растёт слишком сильно, то необходимо его "притормозить", что делается следующим образом ( от 1 до н ).
    //_____ 3.Формула для уравновешивания масштабирования.
    CGFloat newScale = 1.0 + pinchGesture.scale - self.testViewScale;
    //_____ 1.Создаётся типичный кусок кода для масштабирования.
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform =
    CGAffineTransformScale(currentTransform, newScale, newScale);
    
    //_____ 2. Присвоения через которые будут проходить переменные.
    self.testView.transform = newTransform;
    self.testViewScale = pinchGesture.scale;
}

- (void) handleRotation:(UIRotationGestureRecognizer*)rotationGesture{
    
    NSLog(@"handleRotation: %1.3f ", rotationGesture.rotation);
    
    if(rotationGesture.state == UIGestureRecognizerStateBegan) {
        self.testViewScale = 0;
    }
    
    CGFloat newRotation = rotationGesture.rotation - self.testViewRotation;
    
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform =
    CGAffineTransformRotate(currentTransform, newRotation);

    self.testView.transform = newTransform;
    self.testViewRotation = rotationGesture.rotation;
}

- (void) handlePan:(UIPanGestureRecognizer *) panGesture{
    
    NSLog(@"panGesture ");
    self.testView.center = [panGesture locationInView: self.view];
}

- (void) handleVerSwipe:(UISwipeGestureRecognizer *)swipeGesture {
    NSLog(@"VerSwipe");
}

- (void) handleHorSwipe:(UISwipeGestureRecognizer *)swipeGesture {
    NSLog(@"HorSwipe");
}

//_____ этот блок кода создаётся для регулировки работы жестов
#pragma mark - UIGestureRecognizerDelegate

- (BOOL) gestureRecognizer:(UIGestureRecognizer*)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}

- (BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequiredFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    
    return [gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]] &&
           [otherGestureRecognizer isKindOfClass:[UISwipeGestureRecognizer class]];
    
}

@end
