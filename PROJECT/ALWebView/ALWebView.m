//
//  ALWebView.m
//  PROJECT
//
//  Created by AiryL on 18/3/15.
//  Copyright © 2018年 PROJECT_OWNER. All rights reserved.
//


#import "ALWebView.h"

@interface ALWebView ()

@property (nonatomic, readwrite) id webView;

@end

@implementation ALWebView

+ (instancetype)getWebView:(ALWebViewType)type {
    return [[ALWebView alloc] initWithType:type];
}

- (instancetype)initWithType:(ALWebViewType)type {
    self = [super init];
    if (self) {
        _type = type;
        [self _setUpWithType:type];
    }
    return self;
}

- (void)_setUpWithType:(ALWebViewType)type {
    if (type == ALWebViewTypeUIWebView) {
        self.webView = [[UIWebView alloc] init];
    } else {
        self.webView = [[WKWebView alloc] init];
    }
}

@end
