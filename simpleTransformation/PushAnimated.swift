//
//  PushAnimated.swift
//  simpleTransformation
//
//  Created by chennan on 16/10/30.
//  Copyright © 2016年 CN. All rights reserved.
//

import UIKit

class PushAnimated: NSObject, UIViewControllerAnimatedTransitioning{

    var fromImageView: UIImageView!
    init(fromImageView: UIImageView) {
        self.fromImageView = fromImageView
    }
    
    // 动画执行时间
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 2.0
    }
    
    // 动画执行中，主要处理方法
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        // iOS 10, 8, 7 是不一样的，希望各位看官注意，要去养成看api的习惯
        let toVC   = transitionContext.viewController(forKey: .to)
        let containerView = transitionContext.containerView
        
        let width: CGFloat = UIScreen.main.bounds.size.width
        let height: CGFloat = width * 3 / 4
        let fromRect: CGRect = fromImageView.convert(fromImageView.bounds, to: containerView)
        let toRect: CGRect = CGRect(x: 0, y: 0, width: width, height: height)
        
        let animationImageView = UIImageView(frame: fromRect)
        animationImageView.image = fromImageView.image
        containerView.addSubview(animationImageView)
        
        let duration = self.transitionDuration(using: transitionContext)
        UIView.animate(withDuration: duration, animations: {
            animationImageView.frame = toRect
        }) { (finished) in
            containerView.addSubview(toVC!.view)
            transitionContext.completeTransition(true)
        }
        
    }
    
    func animationEnded(_ transitionCompleted: Bool) {
        print("动画结束之后执行的方法")
    }
}
