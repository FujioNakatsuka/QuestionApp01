//
//  SoundFile.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/07/28.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile{
    
    var player: AVAudioPlayer?
 
    func playSound(fileName:String,extensionName:String){
        
        //再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            
        //効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
            
        } catch {
            
            print("エラーです！")
            
            
        }
        
        
        
        
        
    }
    
    
}




