//
//  DeviceHelper.h
//  DeviceInfo
//
//  Created by Lee on 16/1/25.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


enum {
    // iPhone 4,4S 高清分辨率(640x960px)
    UIDevice_iPhoneHiRes            = 1,
    // iPhone 5 高清分辨率(640x1136px)
    UIDevice_iPhone5                = 2,
    // iPhone 6  高清分辨率(750x1134px)
    UIDevice_iPhone6                = 3,
    // iPhone 6+ 高清分辨率(1242x2208px)
    UIDevice_iPhone6pluse          = 4,
}; typedef NSUInteger UIDeviceResolution;

@interface DeviceHelper : NSObject

// 当前分辨率
+ (UIDeviceResolution) currentResolution;
// 当前设备分辨率
+ (NSString *)getCurrentDeviceModel;
// 获取设备信息
+ (void)getDeviceInfo;
// 获取设备电量电量
+(CGFloat)getBatteryQuantity;
// 设备总内存
+(NSString *)getTotalMemorySize;
// 设备可用内存
+(NSString *)getAvailableMemorySize;
// 磁盘总大小
+ (NSString *)getTotalDiskSize;

// 可用磁盘大小
+ (NSString *)getAvailableDiskSize;
// 获取UUID
+ (NSString *)getUDID;



@end
