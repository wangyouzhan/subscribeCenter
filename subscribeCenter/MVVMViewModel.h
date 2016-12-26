//
//  MVVMViewModel.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMPaper.h"

@interface MVVMViewModel : NSObject


@property (nonatomic, strong) NSString*    contentStr;


- (void)setWithModel:(MVVMPaper*)paper;
-(void)onPrintClick;


@end




































