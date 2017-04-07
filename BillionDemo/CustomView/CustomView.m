//
//  CustomView.m
//  BillionDemo
//
//  Created by Pawan Jat on 06/04/17.
//  Copyright © 2017 47billion. All rights reserved.
//

#import "CustomView.h"


@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)closeButtonAction:(id)sender {
    [self removeFromSuperview];
}

@end
