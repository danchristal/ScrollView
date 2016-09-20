//
//  ViewController.m
//  ScrollView
//
//  Created by Dan Christal on 2016-09-19.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "ViewController.h"
#import "ImageDetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong) UIImageView *lighthouseImageView;
@property (nonatomic, strong) UIImageView *lighthouseAtNightImageView;
@property (nonatomic, strong) UIImageView *lighthouseInFieldImageView;

@property (nonatomic, strong) UIImage *showDetailImage;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *lighthouse = [UIImage imageNamed:@"Lighthouse"];
    UIImage *lighthouseAtNight = [UIImage imageNamed:@"Lighthouse-night"];
    UIImage *lighthouseInField = [UIImage imageNamed:@"Lighthouse-in-Field"];
    
    self.lighthouseImageView = [[UIImageView alloc] initWithImage:lighthouse];
    self.lighthouseAtNightImageView = [[UIImageView alloc] initWithImage:lighthouseAtNight];
    self.lighthouseInFieldImageView = [[UIImageView alloc] initWithImage:lighthouseInField];
    
    self.lighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouseAtNightImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouseInFieldImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.lighthouseImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.lighthouseAtNightImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.lighthouseInFieldImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.scrollView addSubview:self.lighthouseImageView];
    [self.scrollView addSubview:self.lighthouseAtNightImageView];
    [self.scrollView addSubview:self.lighthouseInFieldImageView];
    
//    UITapGestureRecognizer *tapImage1 = [[UITapGestureRecognizer alloc] initWithTarget:lighthouseImageView action:@selector(tapHandler:)];
//    [lighthouseImageView addGestureRecognizer:tapImage1];
//    
//    UITapGestureRecognizer *tapImage2 = [[UITapGestureRecognizer alloc] initWithTarget:lighthouseAtNightImageView action:@selector(tapHandler:)];
//    [lighthouseAtNightImageView addGestureRecognizer:tapImage2];
//    
//    UITapGestureRecognizer *tapImage3 = [[UITapGestureRecognizer alloc] initWithTarget:lighthouseInFieldImageView action:@selector(tapHandler:)];
//    [lighthouseInFieldImageView addGestureRecognizer:tapImage3];
    
    UITapGestureRecognizer *taptaptap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    [self.view addGestureRecognizer:taptaptap];
    
    
    
    //First image
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseImageView
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.width                               ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseImageView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.height
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseImageView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.scrollView
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    //second image
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.width
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.height
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.lighthouseImageView
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    //Third image
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.width
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.height
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:self.lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.scrollView
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    self.scrollView.scrollEnabled = YES;
    self.scrollView.pagingEnabled = YES;
    

    
}

-(void)tapHandler:(UITapGestureRecognizer *)tap{
    
    CGPoint location = [tap locationInView:self.scrollView];
    
    if(CGRectContainsPoint(self.lighthouseImageView.frame, location)){
        self.showDetailImage = [UIImage imageNamed:@"Lighthouse"];
        [self performSegueWithIdentifier:@"showImageDetail" sender:self];
    }
    else if(CGRectContainsPoint(self.lighthouseAtNightImageView.frame, location)){
        
        self.showDetailImage = [UIImage imageNamed:@"Lighthouse-night"];
        [self performSegueWithIdentifier:@"showImageDetail" sender:self];
        
    }else if(CGRectContainsPoint(self.lighthouseInFieldImageView.frame, location)){
        self.showDetailImage = [UIImage imageNamed:@"Lighthouse-in-Field"];
        [self performSegueWithIdentifier:@"showImageDetail" sender:self];
        
    }
    
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    float fractionalPage = self.scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    self.pageControl.currentPage = page;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ImageDetailViewController *detailViewController = segue.destinationViewController;
    detailViewController.image = self.showDetailImage;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
