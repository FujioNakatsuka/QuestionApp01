//
//  NextViewController.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/06/29.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

protocol NowScoreDelegate {

    func nowScore(score: Int)
    
    
    
}



class NextViewController: UIViewController {
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var delegate: NowScoreDelegate?
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    var beforeCount = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            
            beforeCount = UserDefaults.standard.object(forKey: "beforeCount") as! Int
            
            
        }
        
        
        
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        //最高得点更新と判定したら入れ替える（ViewControllerに値を渡す）
        if beforeCount < correctedCount{
            
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            delegate?.nowScore(score: correctedCount)
   
        }else if beforeCount > correctedCount{
            
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
            
            
        }
        
        
        //更新していない場合は値を入れ替えない
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
}
