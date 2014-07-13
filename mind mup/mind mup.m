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
    
    /*effectscroll.minimumZoomScale = 0.1;
    effectscroll.maximumZoomScale = 10;*/
    

    CGRect rect2 = CGRectMake(0, 0, 1000, 520);
    imageView = [[UIImageView alloc]initWithFrame:rect2];
                              
    imageView.image = [UIImage imageNamed:@"www.png"];
                              
    [effectscroll addSubview:imageView];
                              
    effectscroll.contentSize = imageView.bounds.size;
    
   effectscroll.showsHorizontalScrollIndicator = NO; //スクロールバー非表示
   effectscroll.showsVerticalScrollIndicator = NO;
    
    /*UIButton *tapbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    tapbtn.frame=CGRectMake(imageView.frame.size.width/2,imageView.frame.size.height/2 , 100,100);
    
    [tapbtn setTitle:text forState:UIControlStateNormal];
    [tapbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [tapbtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [tapbtn setBackgroundImage:[UIImage imageNamed:@"bth"] forState:UIControlStateNormal];
    
    [tapbtn addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    
    tapbtn.tag;
    
    [effectscroll addSubview:tapbtn];*/
    
    // UITextFieldのインスタンスを生成
    CGRect rect = CGRectMake(113,262, 100, 25);
    UITextField *textField = [[UITextField alloc]initWithFrame:rect];
    
    // 枠線のスタイルを設定
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    // テキストを左寄せにする
    textField.textAlignment = UITextAlignmentLeft;
    
    // ラベルのテキストのフォントを設定
    textField.font = [UIFont fontWithName:@"Helvetica" size:14];
    
    // プレースホルダ
    textField.placeholder = @"名称未設定";
    
    textField.keyboardType=UIKeyboardTypeDefault;
    
    // キーボードの種類を設定
    textField.keyboardType = UIKeyboardTypeDefault;
    
    // リターンキーの種類を設定
    textField.returnKeyType = UIReturnKeyDefault;
    
    // 編集中にテキスト消去ボタンを表示
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    // デリゲートを設定
    textField.delegate = self;
    
    // UITextFieldのインスタンスをビューに追加
    [effectscroll addSubview:textField];
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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // キーボードを隠す
    [self.view endEditing:YES];
    
    return YES;
}
@end