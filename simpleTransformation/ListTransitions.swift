//
//  ListTransitions.swift
//  simpleTransformation
//
//  Created by chennan on 16/10/30.
//  Copyright © 2016年 CN. All rights reserved.
//

import UIKit

class ListTransitions: NSObject, UINavigationControllerDelegate {

    var pushAnimation: PushAnimated!
    var popAnimation: PopAnimated!
    var fromImageView: UIImageView!
    
    init(fromImageView: UIImageView) {
        super.init()
        pushAnimation = PushAnimated(fromImageView: fromImageView)
    }
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        /*
            operation:
                push
                pop
           */
        if operation == .push {    // push动画
            return pushAnimation
        }else if operation == .pop {   // pop动画
            return nil //return popAnimation
        }else {
            return nil    // 不执行动画
        }
    }
}
