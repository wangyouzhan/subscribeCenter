//
//  Presenter.m
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import "Presenter.h"
#import "MVPView.h"




@interface Presenter ()<MVPViewDelegate>


@end


@implementation Presenter

-(void)printTask{
    
    NSString* printContent = _model.content;
    [_view printOnView:printContent];
    
}



-(void)onPrintBtnClick{
    
    int rand = arc4random();
    _model.content = [NSString stringWithFormat:@"line %d", rand + 1];
    
    NSLog(@"print content : %@", _model.content);
    
//    [_view printOnView:_model.content];
}


@end
