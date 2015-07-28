//
//  DownLoad.m
//  MyDownLoadManager
//
//  Created by MS on 15-7-22.
//  Copyright (c) 2015年 MS. All rights reserved.
//

#import "DownLoad.h"

@implementation DownLoad

{
    NSMutableData *mutData;
}
-(void)downLoadWithStr:(NSString *)str
{
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:[NSURL URLWithString:str]];
    NSURLConnection *connection=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    [connection start];
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //收到响应
    mutData =[[NSMutableData alloc]init];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [mutData appendData:data];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    self.getData(mutData);
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"error");
}
@end
