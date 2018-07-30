//
//  ViewController.m
//  Autolayout-练习2
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 sunco. All rights reserved.
//

/**
 UILabel控件比较特殊，在xib中约束此控件的时候需要先把此控件的Lines设为0，代表此控件允许容纳多行文字，另外需要约束它的x,y以及宽度就好了，不必约束它的高度，Autolayout会根据控件里面文字的多少来自动调整它的高度；
 在约束UILabel控件的时候为了使当此控件里面的文字很少的时候文字也能够充满此控件，所以不能把此控件的宽度设为固定长度，要规定宽度的一个最大值，即宽度要小于等于这个值。在xib中约束完控件的宽度以后，要对控件的宽度约束进行修改，把宽度约束的Relation选项设置为"Less Than or Equal"（小于等于）就可以了。
 */
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.label.text = @"fejddsvdsvdsdsdsdcfejddsvdsvdsdsdsdcfejddsvdsvdsdsdsdcfejddsvdsvdsdsdsdc";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
