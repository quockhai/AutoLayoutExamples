//
//  CustomView.m
//  CustomViewLayout
//
//  Created by quockhai on 2019/4/3.
//  Copyright © 2019 Polymath. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIView * view = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil].firstObject;
        view.frame = self.bounds;
        [self addSubview: view];
        
        return self;
    }
    
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        UIView * view = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil].firstObject;
        view.frame = self.bounds;
        [self addSubview: view];
        
        return self;
    }
    
    return self;
}
@end
