//
//  ImagesModel.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/06/29.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation

class ImagesModel{
    let imageText:String
    let answer:Bool
    
    init(imageName:String,correctOrNot:Bool) {
        imageText = imageName
        answer = correctOrNot
    }
    
}
