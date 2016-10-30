//
//  PopAnimated.swift
//  simpleTransformation
//
//  Created by chennan on 16/10/30.
//  Copyright © 2016年 CN. All rights reserved.
//

import UIKit

class PopAnimated: NSObject, UIViewControllerAnimatedTransitioning {

    // 动画执行时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 2.0
    }
    
    // 动画执行中，主要处理方法
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
    }
    
    func animationEnded(_ transitionCompleted: Bool) {
        print("动画结束之后执行的方法")
    }

}
