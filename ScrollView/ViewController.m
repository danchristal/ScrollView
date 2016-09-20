//
//  ViewController.m
//  ScrollView
//
//  Created by Dan Christal on 2016-09-19.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *lighthouse = [UIImage imageNamed:@"Lighthouse"];
    UIImage *lighthouseAtNight = [UIImage imageNamed:@"Lighthouse-night"];
    UIImage *lighthouseInField = [UIImage imageNamed:@"Lighthouse-in-Field"];
    
    UIImageView *lighthouseImageView = [[UIImageView alloc] initWithImage:lighthouse];
    UIImageView *lighthouseAtNightImageView = [[UIImageView alloc] initWithImage:lighthouseAtNight];
    UIImageView *lighthouseInFieldImageView = [[UIImageView alloc] initWithImage:lighthouseInField];
    
    lighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    lighthouseAtNightImageView.translatesAutoresizingMaskIntoConstraints = NO;
    lighthouseInFieldImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    lighthouseImageView.contentMode = UIViewContentModeScaleAspectFit;
    lighthouseAtNightImageView.contentMode = UIViewContentModeScaleAspectFit;
    lighthouseInFieldImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.scrollView addSubview:lighthouseImageView];
    [self.scrollView addSubview:lighthouseAtNightImageView];
    [self.scrollView addSubview:lighthouseInFieldImageView];
    
    //First image
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseImageView
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.width                               ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseImageView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.height
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseImageView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.scrollView
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    //second image
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.width
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.height
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:lighthouseImageView
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    //Third image
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.width
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeHeight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                multiplier:1
                                                                  constant:self.view.frame.size.height
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseInFieldImageView
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:lighthouseAtNightImageView
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:0
                                     ]];
    
    [self.scrollView addConstraint: [NSLayoutConstraint constraintWithItem:lighthouseInFieldImageView
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
