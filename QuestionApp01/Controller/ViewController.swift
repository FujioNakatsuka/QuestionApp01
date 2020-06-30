//
//  ViewController.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/06/29.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    let imagesList = ImagesList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            
            //○ボタンが押された時
            
            //ユーザが○ボタンを押した
            
            //○ボタンの音声を流す
            
            
        }else if (sender as AnyObject).tag == 2{
            
            //×ボタンが押された時
            
            //ユーザが×ボタンを押した
            
            //×ボタンの音声を流す
   
            
        }
        
    }
    
    

}

