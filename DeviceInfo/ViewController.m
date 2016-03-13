//
//  ViewController.m
//  DeviceInfo
//
//  Created by Lee on 16/1/25.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "ViewController.h"
#import "DeviceHelper.h"
#import "DeviceUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [DeviceHelper getDeviceInfo];
    
    NSString *phoneModel =[DeviceHelper getCurrentDeviceModel];
    NSLog(@"手机型号%@", phoneModel);
    NSLog(@"%lu", (unsigned long)[DeviceHelper currentResolution]);
    
    NSLog(@"电池余量%f", [DeviceHelper getBatteryQuantity]);
    
    NSLog(@"可用内存%@", [DeviceHelper getAvailableMemorySize]);
    NSLog(@"总内存%@", [DeviceHelper getTotalMemorySize]);
    
    NSLog(@"总磁盘空间%@", [DeviceHelper getTotalDiskSize]);
    NSLog(@"可用磁盘空间%@", [DeviceHelper getAvailableDiskSize]);
    
    NSLog(@"%@", [DeviceHelper getUDID]);
    NSLog(@"%@",NSStringFromCGSize([DeviceUtil backCameraStillImageResolutionInPixels]));
    
    // Do any additional setup after loading the view, typically from a nib.
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
