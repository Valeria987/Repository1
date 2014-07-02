//
//  ViewController.m
//  Project111
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *name;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.name1.image = _image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
