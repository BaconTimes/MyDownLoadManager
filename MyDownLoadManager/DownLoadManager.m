//
//  DownLoadManager.m
//  MyDownLoadManager
//
//  Created by MS on 15-7-22.
//  Copyright (c) 2015年 MS. All rights reserved.
//

#import "DownLoadManager.h"
#import "DownLoad.h"
@implementation DownLoadManager
{
    NSData *data;
 }
static DownLoadManager *shared;
+(DownLoadManager *)sharedManager
{
    if(shared == nil)
    {
        shared = [[DownLoadManager alloc]init];
        
    }
    return shared;
}
-(void)addDownLoadDataWithDownLoadStr:(NSString *)str
{
     //单独设置 下载类
    DownLoad *down=[[DownLoad alloc]init];
    [down downLoadWithStr:str];
    //需要下载完了之后 把数据传过来
    
    [down setGetData:^(NSData *da) {
        data=da;
        NSLog(@"----%@",data);
    }];
    
    
}
-(NSDictionary *)getDicWithData
{
    NSDictionary *dic=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    return  dic;
}





@end
