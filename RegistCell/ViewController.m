//
//  ViewController.m
//  RegistCell
//
//  Created by wangning on 15/8/10.
//  Copyright (c) 2015年 IT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *table = [[UITableView alloc]init];
    table.frame = CGRectMake(0, 0, 320, 568);
    [self.view addSubview:table];
    //用注册的方法创建cell
    [table registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"cell"];
    table.delegate = self;
    table.dataSource = self;
    [table release];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    [cell creatSubView];

    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    cell.delegate = self;
    
    return cell;
}

-(void)cellButtonClick:(UIButton *)sender{
    
    
    NSLog(@"调用了代理方法");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
