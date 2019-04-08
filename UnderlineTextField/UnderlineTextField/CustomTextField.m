//
//  CustomTextField.m
//  UnderlineTextField
//
//  Created by quockhai on 2019/4/8.
//  Copyright © 2019 Polymath. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        UIView * view = [[NSBundle mainBundle] loadNibNamed:@"CustomTextField" owner:self options:nil].firstObject;
        view.frame = self.bounds;
        
        [self addSubview:view];
        return self;
    }
    
    return self;
}

@end
