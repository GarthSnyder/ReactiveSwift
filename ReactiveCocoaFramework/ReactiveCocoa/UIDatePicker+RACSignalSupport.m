//
//  UIDatePicker+RACSignalSupport.m
//  ReactiveCocoa
//
//  Created by Uri Baghin on 20/07/2013.
//  Copyright (c) 2013 GitHub, Inc. All rights reserved.
//

#import "UIDatePicker+RACSignalSupport.h"
#import "EXTKeyPathCoding.h"
#import "UIControl+RACSignalSupport.h"

@implementation UIDatePicker (RACSignalSupport)

- (RACChannelTerminal *)rac_dateChannelWithNilValue:(id)nilValue {
	return [self rac_channelForControlEvents:UIControlEventValueChanged key:@keypath(self.date) nilValue:nilValue];
}

@end
