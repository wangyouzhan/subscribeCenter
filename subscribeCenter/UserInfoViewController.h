//
//  UserInfoViewController.h
//  subscribeCenter
//
//  Created by wangyouzhan on 2016/12/10.
//  Copyright © 2016年 lookstar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeyValueView.h"


@interface UserInfoViewController : UIViewController

@property(nonatomic, strong) KeyValueView *userNameView;
@property(nonatomic, strong) KeyValueView *userSexView;
@property(nonatomic, strong) KeyValueView *birthdayView;
@property(nonatomic, strong) KeyValueView *emailView;
@property(nonatomic, strong) KeyValueView *phoneView;




@end
