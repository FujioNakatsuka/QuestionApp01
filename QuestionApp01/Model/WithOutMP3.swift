//
//  WithOutMP3.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/07/28.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation

class WithOutMP3: SoundFile {
    override func playSound(fileName: String, extensionName: String) {
        if extensionName == "mp3"{
            
            print("Sorry,can't play")
            
        }
        
        player?.stop()
        
    }
}


