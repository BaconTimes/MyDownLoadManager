//
//  DownLoad.h
//  MyDownLoadManager
//
//  Created by MS on 15-7-22.
//  Copyright (c) 2015年 MS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DownLoad : NSObject<NSURLConnectionDataDelegate>

@property(nonatomic,strong)void (^getData)(NSData *data);

-(void)downLoadWithStr:(NSString *)str;
@end
