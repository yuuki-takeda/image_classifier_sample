//
//  ViewController+ClassifierDelegate.swift
//  FruitsCategorizerVision
//
//  Created by 多鹿豊 on 2017/07/23.
//  Copyright © 2017年 多鹿豊. All rights reserved.
//

import UIKit

extension ViewController: ClassifierDelegate {
    
    func didClassify(with identifier: String) {
        indicator.isHidden = true
        switch identifier {
        case "apple": setPredictedIconAppearance(to: appleIcon)
        case "banana": setPredictedIconAppearance(to: bananaIcon)
        case "cherry": setPredictedIconAppearance(to: cherryIcon)
        case "grape": setPredictedIconAppearance(to: grapeIcon)
        case "melon": setPredictedIconAppearance(to: melonIcon)
        case "orange": setPredictedIconAppearance(to: orangeIcon)
        case "strawberry": setPredictedIconAppearance(to: strawberryIcon)
        default: resetFruitsIconAppearance()
        }
    }
    
    private func setPredictedIconAppearance(to icon: UIImageView) {
        let transform = icon.transform
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            options: .curveEaseInOut,
            animations: {
                icon.alpha = 1
                icon.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (finished) in
            UIView.animate(
                withDuration: 0.3,
                delay: 0,
                options: .curveEaseInOut,
                animations: {
                    icon.transform = transform
            })
        }
    }
    
}
