//
//  BZSectorProgressView.h
//  SectorProgressView
//
//  Created by caishilin on 2018/11/29.
//  Copyright © 2018 caishilin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BZSectorProgressView : UIView

// 进度
@property (nonatomic, assign) float progress;

// 圆形边框宽度，0 不显示
@property (nonatomic, assign) CGFloat circleSideWidth;
// 进度扇形半径，设置为 0 为自动适配大小
@property (nonatomic, assign) CGFloat sectorRadius;
// 背景色
@property (nonatomic, strong) UIColor *backgroundColor;
// 进度颜色
@property (nonatomic, strong) UIColor *progressColor;


@end

NS_ASSUME_NONNULL_END
