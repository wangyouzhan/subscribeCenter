//
//  MVVMViewModel.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "MVVMViewModel.h"
#import <FBKVOController.h>
#import "MVVMPaper.h"

@interface MVVMViewModel ()

@property (nonatomic, strong) MVVMPaper*  model;

@end



@implementation MVVMViewModel

-(instancetype)init{
    self = [super init];
    if (self) {
        
        
    }
    
    return self;
}

-(void)setWithModel:(MVVMPaper *)paper{
    self.model = paper;
    self.contentStr = paper.content;
}

-(void)onPrintClick{
    
    int rand = arc4random();
    
    self.model.content =[NSString stringWithFormat:@"lien %d", rand];
    self.contentStr = self.model.content;
    
}

@end


















