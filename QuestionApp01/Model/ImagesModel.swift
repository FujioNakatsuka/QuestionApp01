//
//  ImagesModel.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/06/29.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation

class ImagesModel{
    //画像名を取得して、その画像名が人間かそうでないかをフラグによって判定するための機能
    let imageText:String
    let answer:Bool
    
    //initの時に引数を持ってくる
    
    init(imageName:String,correctOrNot:Bool) {
        imageText = imageName
        answer = correctOrNot
    }
    
}
