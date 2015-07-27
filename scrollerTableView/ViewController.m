//
//  ViewController.m
//  scrollerTableView
//
//  Created by 徐继垚 on 15/6/9.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

#import "ViewController.h"
#define ImageHeight 200.0f
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    self.tableView.contentInset = UIEdgeInsetsMake(ImageHeight, 0, 0, 0);
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    self.imageView = [[XUScrolViw alloc]initWithFrame:CGRectMake(0, -ImageHeight, [[UIScreen mainScreen] bounds].size.width, ImageHeight)];
    [self.imageView setImage:[UIImage imageNamed:@"1.jpg"]];
    [self.imageView createViewWithRect:CGRectMake(self.imageView.frame.origin.x + 270, self.imageView.frame.origin.y + 310, 80, 80) LRect:CGRectMake(self.imageView.frame.origin.x + 160, self.imageView.frame.origin.y + 350, 100, 30)];
    [self.imageView setUserName:@"徐继垚" TextColor:[UIColor blackColor] TextSize:20.0];
    [self.imageView setLayerOrReg:YES];
    [self.imageView setUserImage:[UIImage imageNamed:@"2.jpg"]];
    [self.tableView addSubview:self.imageView];

    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat content = scrollView.contentOffset.y;
    
    if (content < -ImageHeight) {
        //定义一个frame  初始值 是imageview打frame
        CGRect frame = self.imageView.frame;
        //矩形y轴 等于 table的 偏移量
        frame.origin.y = content;
         //矩形高度  等于 table 负的偏移量
        frame.size.height = -content;
          //重新设置 image 的 frame
        self.imageView.frame = frame;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row];
    
    return cell;
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
