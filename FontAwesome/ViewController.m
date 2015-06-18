//
//  ViewController.m
//  FontAwesome
//
//  Created by Vinod Vishwakarma on 12/06/15.
//  Copyright (c) 2015 Vinod Vishwakarma. All rights reserved.
//

#import "ViewController.h"
#import "NSString+FontAwesome.h"
#import "UIFont+FontAwesome.h"
#import "UIImage+FontAwesome.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self.testButton setTitle:[NSString fontAwesomeIconStringForIconIdentifier:@"fa-plus"] forState:UIControlStateNormal ];
//    self.testButton.titleLabel.font = [UIFont fontWithName:kFontAwesomeFamilyName size:18];
//

    [self.testButton setTitle:[NSString fontAwesomeIconStringForEnum:FAPlus] forState:UIControlStateNormal ];
    self.testButton.titleLabel.font = [UIFont fontWithName:kFontAwesomeFamilyName size:18];
    
    [self.testButton setTintColor:[UIColor grayColor]];


    self.testLabel.text = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@", [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"]]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16] range:NSMakeRange(1, [self.testLabel.text length] - 1)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:kFontAwesomeFamilyName size:22] range:NSMakeRange(0, 1)];
    [self.testLabel setAttributedText:attributedString];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
