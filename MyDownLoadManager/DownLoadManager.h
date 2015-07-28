//
//  DownLoadManager.h
//  MyDownLoadManager
//
//  Created by MS on 15-7-22.
//  Copyright (c) 2015年 MS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DownLoadManager : NSObject<NSURLConnectionDataDelegate>

+(DownLoadManager *)sharedManager;
-(void)addDownLoadDataWithDownLoadStr:(NSString *)str;
-(NSDictionary *)getDicWithData;

@end
