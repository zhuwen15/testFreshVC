//
//  ViewController.m
//  testFreshVC
//
//  Created by zhuzhiwen on 16/6/4.
//  Copyright © 2016年 zhuzhiwen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic,assign) NSInteger number;
- (IBAction)freshVC:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.number = 200;
    //self.label.text = [NSString stringWithFormat:@"%ld",self.number];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
   // NSLog(@"#####");
    self.label.text = [NSString stringWithFormat:@"%ld",self.number];
}
- (IBAction)freshVC:(id)sender {
    
    self.number -- ;
    [self.view setNeedsLayout];
    
}
@end
