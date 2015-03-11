//
//  tabbarView.m
//  tabbarTest
//
//  Created by Kevin Lee on 13-5-6.
//  Copyright (c) 2013年 Kevin. All rights reserved.
//

#import "QStabbarView.h"



@implementation TabbarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setFrame:frame];
        [self layoutView];
    }
    return self;
}

-(void)layoutView
{
    CGRect rx = [ UIScreen mainScreen ].bounds;
    _tabbarView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tabbar_5"]];
//    _tabbarView.contentMode = UIViewContentModeScaleToFill;
    [_tabbarView setFrame:CGRectMake(0, 5, rx.size.width, 65)];
    [_tabbarView setUserInteractionEnabled:YES];
    
    _tabbarViewCenter = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tabbar_mainbtn_bg.png"]];
    _tabbarViewCenter.center = CGPointMake(self.center.x, self.bounds.size.height/2.0+3);
    [_tabbarViewCenter setUserInteractionEnabled:YES];
    
    _button_center = [UIButton buttonWithType:UIButtonTypeCustom];
    _button_center.adjustsImageWhenHighlighted = YES;
//    [_button_center setBackgroundImage:[UIImage imageNamed:@"tabbar_mainbtn"] forState:UIControlStateNormal];
    [_button_center setTag:105];
    
    [_button_center setFrame:CGRectMake(0, 0, 72, 62)];
    
    _button_center.center =CGPointMake(_tabbarViewCenter.bounds.size.width/2.0, _tabbarViewCenter.bounds.size.height/2.0) ;
    [_button_center addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    
    [_tabbarViewCenter addSubview:_button_center];
    
    [self addSubview:_tabbarView];
    [self addSubview:_tabbarViewCenter];
    
    [self layoutBtn];

}

-(void)layoutBtn
{
    CGRect rx = [ UIScreen mainScreen ].bounds;
    float width = rx.size.width/5;
    _button_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button_1 setFrame:CGRectMake(0, 0, rx.size.width/5, 65)];
    [_button_1 setTag:101];
    [_button_1 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    
    _button_2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button_2 setFrame:CGRectMake(width*1, 0, rx.size.width/5, 65)];
    [_button_2 setTag:102];
    [_button_2 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    
    _button_3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button_3 setFrame:CGRectMake(width*3, 0, rx.size.width/5, 65)];
    [_button_3 setTag:103];
    [_button_3 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    
    _button_4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button_4 setFrame:CGRectMake(width*4, 0, rx.size.width/5, 65)];
    [_button_4 setTag:104];
    [_button_4 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    
    [_tabbarView addSubview:_button_1];
    [_tabbarView addSubview:_button_2];
    [_tabbarView addSubview:_button_3];
    [_tabbarView addSubview:_button_4];
    
}

-(void)btn1Click:(id)sender
{
        
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 101:
            [_tabbarView setImage:[UIImage imageNamed:@"tabbar_0"]];
            [self.delegate touchBtnAtIndex:0];
            break;
        case 102:
            [_tabbarView setImage:[UIImage imageNamed:@"tabbar_1"]];
            [self.delegate touchBtnAtIndex:1];
            break;
        case 103:
            [_tabbarView setImage:[UIImage imageNamed:@"tabbar_3"]];
            [self.delegate touchBtnAtIndex:2];
            break;
        case 104:
            [_tabbarView setImage:[UIImage imageNamed:@"tabbar_4"]];
            [self.delegate touchBtnAtIndex:3];
            break;
        case 105:
            [_tabbarView setImage:[UIImage imageNamed:@"tabbar_5"]];
            [self.delegate touchBtnAtIndex:4];
            break;
        default:
            break;
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end