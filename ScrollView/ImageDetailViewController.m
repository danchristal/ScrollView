//
//  ImageDetailViewController.m
//  ScrollView
//
//  Created by Dan Christal on 2016-09-19.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImage *lighthouse = [UIImage imageNamed:@"Lighthouse"];
//    self.imageView.image = lighthouse;
    
    self.imageView.image = self.image;
    [self.imageScrollView addSubview:self.imageView];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    self.imageScrollView.minimumZoomScale = 0.5;
    self.imageScrollView.maximumZoomScale = 4.0;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

@end
