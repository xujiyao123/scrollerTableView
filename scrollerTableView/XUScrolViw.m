//
//  XUScrolViw.m
//  scrollerTableView
//
//  Created by 徐继垚 on 15/6/9.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

#import "XUScrolViw.h"

@implementation XUScrolViw


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
     
        self.userView = [[UIImageView alloc]init];
        self.userLabel = [[UILabel alloc]init];
        
        //这句话很重要，不然图片只能拉长 不能放大
        self.contentMode = UIViewContentModeScaleAspectFill;
        self.clipsToBounds = YES;
       
    }
    return self;
}
- (void)createViewWithRect:(CGRect)userRect LRect:(CGRect)userLrect
{
//    self.imageView.frame = CGRectMake(self.frame.origin.x, self.frame.origin, <#CGFloat width#>, <#CGFloat height#>);
//    self.imageView.image = [UIImage imageNamed:@"1.jpg"];
//    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
//    [self addSubview:self.imageView];
//    
    self.userView.frame = userRect;
    self.userView.backgroundColor = [UIColor redColor];
    self.userView.contentMode = UIViewContentModeScaleAspectFill;
    self.userView.clipsToBounds = YES;
     //子空间自动匹配父控件顶端
    self.userView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [self addSubview:self.userView];
    
    
    self.userLabel.frame = userLrect;
 //   self.userLabel.frame = CGRectMake(0, 0, 0, 0);
    //label长度自适应文字大小
//    CGSize size = [self.userLabel sizeThatFits:CGSizeMake(MAXFLOAT, MAXFLOAT)];
//    
//    self.userLabel.frame = CGRectMake(userLrect.origin.x, userLrect.origin.y, size.width, size.height);
    
    self.userLabel.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [self addSubview:self.userLabel];
    
    
}
- (void)setLayerOrReg:(BOOL)reg
{
    if (reg == YES) {
        
        self.userView.layer.cornerRadius = self.userView.frame.size.height/2;
        self.userView.clipsToBounds = YES;
    }
    else
    {
        NSLog(@"sb");
    }
    
    
}
- (void)setUserName:(NSString *)name TextColor:(UIColor *)color TextSize:(CGFloat)size
{
    self.userLabel.textColor =  color;
    self.userLabel.font = [UIFont systemFontOfSize:size];
    self.userLabel.text = name;
    
    
}
- (void)setUserImage:(UIImage *)image
{
    
    self.userView.image = image;
    
}
@end
