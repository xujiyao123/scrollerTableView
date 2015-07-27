//
//  XUScrolViw.h
//  scrollerTableView
//
//  Created by 徐继垚 on 15/6/9.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XUScrolViw : UIImageView
{
    CGFloat userOrginX;
    CGFloat userOrginY;
    CGFloat userSizeW;
    CGFloat userSizeH;
    CGRect useRRect;
    
    
    CGFloat userLOrginX;
    CGFloat userLOrginY;
    CGFloat userLSizeW;
    CGFloat userLSizeH;
    
    CGRect userLRect;
}
 //父控件
@property (nonatomic ,retain)UIImageView * imageView;
//子控件
@property (nonatomic ,retain)UIImageView * userView;
@property (nonatomic ,retain)UILabel * userLabel;
//设置子控件frame
- (void)createViewWithRect:(CGRect)userRect
                     LRect:(CGRect)userLrect;
//设置label text 颜色 字体大小
- (void)setUserName:(NSString *)name
          TextColor:(UIColor *)color
           TextSize:(CGFloat)size;
//设置用户图片
- (void)setUserImage:(UIImage *)image;
//是否圆形
- (void)setLayerOrReg:(BOOL)reg;

//- (void)setImage:(UIImage *)image;

@end
