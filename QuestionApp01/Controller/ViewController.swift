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
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0

    
    let imagesList = ImagesList()
    
    //IBActionで検知した正答が、どちらなのかを取得する変数
    var pickedAnswer = false
    
    //modalで戻ってきた時に初期値へ戻す
    override func viewDidLoad() {
        super.viewDidLoad()
     correctCount = 0
     wrongCount = 0
     questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        //model folder内の設計図.imageListクラス内のプロパティが使える
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    
    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            
         pickedAnswer = true
            //○ボタンが押された時
        
            //ユーザが○ボタンを押した
            
            //○ボタンの音声を流す
            
            
        }else if (sender as AnyObject).tag == 2{
            
          pickedAnswer = false
            //×ボタンが押された時
            
            //ユーザが×ボタンを押した
            
            //×ボタンの音声を流す
   
            
        }
       
        //チェック回答があっているか（pickedAnswerとImageListのcorrectOrNotの値が一致しているかどうか）
        
        check()
        nextQuestions()
        
    }
   
    
    func check(){
        let  correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            print("正解")
            correctCount = correctCount + 1
        
            
        }else{
             print("間違い")
            wrongCount = wrongCount + 1
             
        }
        
        
        
    }
    
    func nextQuestions(){
        
        if questionNumber <= 9{
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
            
        }else{
            
            print("問題終了")
            
            //画面遷移
            performSegue(withIdentifier: "next", sender: nil)
            
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "next"{
            
            let nextVC = segue.destination as! NextViewController
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            
            
        }
        
        
    }
        
        
        
        
    
    
    

}

