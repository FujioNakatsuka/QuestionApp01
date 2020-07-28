//
//  ChangeColor.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/07/28.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation
import UIKit

class ChangeColor{
    
    func changeColor(topR:CGFloat,topG:CGFloat,topB:CGFloat,topAlpha:CGFloat,
                     bottomR:CGFloat,bottomG:CGFloat,bottomB:CGFloat,bottomAlpha:CGFloat)->CAGradientLayer{
            //グラデーションの開始色を決める
        
        
        let topColor = UIColor(red:topR,green: topG,blue: topB,alpha: topAlpha)
        let bottomColor = UIColor(red:bottomR,green: bottomG,blue: bottomB,alpha: bottomAlpha)
        
        let gradientColor = [topColor.cgColor,bottomColor.cgColor]
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
        
    }
    
    
}
