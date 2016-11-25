//
//  Builder.m
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Builder.h"


@implementation Builder



- (void)buildAllParts{
    
    
    
    //创建所有的部件
    [self.engine build];
    [self.wheels build];
    [self.door build];
    
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    dataDic[@"engine"] = [self.engine infomation];
    dataDic[@"wheels"] = [self.wheels infomation];
    dataDic[@"door"] = [self.door infomation];
    
    self.productsInfo = dataDic;
    
    
}




@end
