//
//  mind mup.m
//  mind mup
//
//  Created by Masanari Miyamoto on 2014/06/15.
//  Copyright (c) 2014年 Masanari Miyamoto. All rights reserved.
//

#import "mind mup.h"

@interface mind_mup ()

@end

@implementation mind_mup

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        // UIImageViewのインスタンス化
    // サンプルとして画面に収まりきらないサイズ
    //CGRect rect = CGRectMake(0, 0, 1000, 1000);
    //UIImageView *imageView = [[UIImageView alloc]initWithFrame:rect];
    
    // 画像を設定
    //imageView.image = [UIImage imageNamed:@"lena.png"];
    
    // UIScrollViewのインスタンスに画像を貼付ける
    //[scrollView addSubview:imageView];
    
    
    // UIScrollViewのコンテンツサイズを画像のサイズに合わせる
    //scrollView.contentSize = imageView.bounds.size;
    
    // UIScrollViewのインスタンスをビューに追加
    //[self.view addSubview:scrollView];
    
    // 表示されたときスクロールバーを点滅
    //[scrollView flashScrollIndicators];
    
    
    
    // UIScrollViewのインスタンス化

    effectscroll.frame = self.view.bounds;
    
    // スクロールしたときバウンドさせないようにする
    effectscroll.bounces = NO;

    effectscroll.frame = self.view.bounds;
    
    effectscroll.bounces = NO;
    
    effectscroll.delegate=self;
    
    effectscroll.minimumZoomScale = 0.1;
    effectscroll.maximumZoomScale = 10;
    

    CGRect rect = CGRectMake(0, 0, 1000, 1000);
    imageView = [[UIImageView alloc]initWithFrame:rect];
                              
    imageView.image = [UIImage imageNamed:@"www.png"];
                              
    [effectscroll addSubview:imageView];
                              
    effectscroll.contentSize = imageView.bounds.size;
    
   effectscroll.showsHorizontalScrollIndicator = NO; //スクロールバー非表示
   effectscroll.showsVerticalScrollIndicator = NO;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imageView;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end