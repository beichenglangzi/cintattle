//
//  ViewController.m
//  cintattle
//
//  Created by cl on 16/5/23.
//  Copyright © 2016年 cl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* str = @"{\"n\":\"Harry Pottery\",\"p\": 256,    \"ext\" : {        \"desc\" : \"A book written by J.K.Rowing.\"},\"ID\" : 100010}  ";
    
    NSData* data =[str dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary* dic = [NSJSONSerialization JSONObjectWithData:data
                                                        options:NSJSONReadingMutableContainers
                                                          error:nil];
    
    NSLog(@"dic is %@",dic[@"ID"]);
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(20, 100, 93,93)];
    view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"11"].CGImage);
    [self.view addSubview:view];
    

    // Do any additional setup after loading the view, typically from a nib.
}
-(void)addImageView{
    UIImage* image = [UIImage imageNamed:@"10"];
    UIImageView* imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    imageView.backgroundColor = [UIColor redColor];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    imageView.image = image;
    
    
    
    UIImageView* imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(20, 100, 93, 93)];
    
    //    imageView1.backgroundColor = [UIColor redColor];
    imageView1.image = [UIImage imageNamed:@"11"];
    [self.view addSubview:imageView1];
    
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(42, 195, 80, 44)];
    [self.view addSubview:label];
    label.text = @"扫描";
    label.textColor = [UIColor greenColor];
    
    UIImageView* imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(180, 193-102, 102, 102)];
    
    //    imageView2.backgroundColor = [UIColor redColor];
    imageView2.image = [UIImage imageNamed:@"12"];
    [self.view addSubview:imageView2];
    
    
    UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(218, 195, 80, 44)];
    [self.view addSubview:label1];
    label1.text = @"扫描";
    label1.textColor = [UIColor greenColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
