//
//  ViewController.m
//  Animation
//
//  Created by qj.huang on 2018/5/22.
//  Copyright © 2018年 qjmac. All rights reserved.
//

#import "ViewController.h"
#import "DrawCircleProgressButton.h"
@interface ViewController ()
@property (nonatomic, strong) DrawCircleProgressButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self initPageView];
}

- (void)initPageView {
    //加动画
    DrawCircleProgressButton *drawCircleView = [[DrawCircleProgressButton alloc]initWithFrame:CGRectMake(50, 100, 100, 100)];
    drawCircleView.lineWidth = 4;
//    [drawCircleView setTrackColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.7]];
//    [drawCircleView setProgressColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1.0]];
    [drawCircleView setTrackColor:[UIColor yellowColor]];
    [drawCircleView setProgressColor:[UIColor redColor]];
    [drawCircleView setTitle:@"跳过" forState:UIControlStateNormal];
    [drawCircleView setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    drawCircleView.titleLabel.font = [UIFont boldSystemFontOfSize:14.0];
    self.btn = drawCircleView;
    [drawCircleView addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    
    /**
     *  progress 完成时候的回调
     */
    __weak __typeof(self) weakSelf = self;
    [drawCircleView startAnimationDuration:10 withBlock:^{
//        [weakSelf dismiss];
    }];
    
    [self.view addSubview:drawCircleView];
}

- (void)dismiss {
    [self.btn startAnimationDuration:10 withBlock:^{
        //        [weakSelf dismiss];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
