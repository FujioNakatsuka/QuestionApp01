//
//  Human.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/07/28.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation

class Human:Animal{
    
    override func breath() {
        super.breath()
        
        profile()
    
    }
    
    func profile(){
        
        print("Please call me Fujio")
        
    }
    
}
