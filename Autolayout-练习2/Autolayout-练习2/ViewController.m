//
//  ViewController.m
//  Autolayout-练习2
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 sunco. All rights reserved.
//

/**
 UILabel控件比较特殊，在xib文件中约束此控件的时候需要先把此控件的Lines设为0，代表此控件允许容纳多行文字，另外需要设置它的x,y值并且约束它的宽度，但是不必设置它的高度值，当控件的内容文字比较多的时候Autolayout会根据控件的内容文字的多少来自动调整它的高度；
 在约束UILabel控件的时候为了使当此控件的内容文字很少（肯定是单行）的时候文字内容也能够充满此控件，所以不能把此控件的宽度设为固定的值，要规定一个宽度的最大值，即该控件的宽度要小于等于这个值。在xib中约束完控件的宽度以后，要对控件的宽度约束进行修改，把宽度约束的Relation选项设置为"Less Than or Equal"（小于等于）就可以了。
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
