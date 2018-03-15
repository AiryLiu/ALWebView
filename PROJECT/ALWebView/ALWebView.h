//
//  ALWebView.h
//  PROJECT
//
//  Created by AiryL on 18/3/15.
//  Copyright © 2018年 PROJECT_OWNER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

typedef NS_ENUM(NSInteger, ALWebViewType) {
    ALWebViewTypeUIWebView = 0,
    ALWebViewTypeWKWebView
};

@interface ALWebView : NSObject

@property (nonatomic, readonly) id webView;
@property (nonatomic, readonly) ALWebViewType type;

+ (instancetype)getWebView:(ALWebViewType)type;

@end
