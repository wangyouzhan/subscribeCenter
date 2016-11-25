//
//  Builder.h
//  subscribeCenter
//
//  Created by wangyouzhan on 16/10/20.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractDoor.h"
#import "AbstractEngine.h"
#import "AbstractWheel.h"
#import "BuilderProtocol.h"


@interface Builder : NSObject

@property(nonatomic, strong) id<BuilderProtocol, AbstractEngine> engine;
@property(nonatomic, strong) id<BuilderProtocol, AbstractWheel> wheels;
@property(nonatomic, strong) id<BuilderProtocol, AbstractDoor> door;

/**
 产品信息
 */
@property(nonatomic, strong) NSDictionary *productsInfo;



/**
 构建所有部件

 
 */
- (void)buildAllParts;





@end
