//
//  Presenter.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/26.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MVPView.h"
#import "MVPModel.h"


@interface Presenter : NSObject

@property (nonatomic, strong) MVPView*     view;
@property (nonatomic, strong)  MVPModel*     model;

- (void)printTask;

@end
