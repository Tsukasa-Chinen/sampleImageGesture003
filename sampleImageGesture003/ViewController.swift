//
//  ViewController.swift
//  sampleImageGesture003
//
//  Created by Tsukasa Chinen on 2017/11/08.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    /* Tap */
    @IBAction func myTap(_ sender: UITapGestureRecognizer) {
        alertMessage(paraTitle:"Sleeping fox", paraMessage:"きつねさんは昼寝中だお！", paraImageName:"2.jpg")
    }
    
    /* Swipe */
    @IBAction func mySwipe(_ sender: UISwipeGestureRecognizer) {
        alertMessage(paraTitle:"Arctic Fox", paraMessage:"北極きつねを紹介するよ！", paraImageName:"3.jpg")
    }

    /* Pinch */
    @IBAction func myPinch(_ sender: UIPinchGestureRecognizer) {
        alertMessage(paraTitle:"Fox", paraMessage:"普通のきつねを紹介するよ", paraImageName:"1.jpg")
    }
    
    func alertMessage(paraTitle: String, paraMessage: String, paraImageName: String) {
        // 部品となるアラートを作成
        let alert = UIAlertController(
             title: "\(paraTitle)"
            ,message: "\(paraMessage)"
            ,preferredStyle: .alert
        )
        
        // アラートにOKボタンを追加
        // handler : OKボタンが押された時に行いたい処理を指定する場所
        alert.addAction(UIAlertAction(
            title: "OK"
            ,style: .default
            ,handler: {
                action in self.myImage.image = UIImage(named: "\(paraImageName)")

            }
        ))
        
        // アラートを表示
        // completion: 動作が完了した後に発動される処理を指定する場所
        present(
             alert
            ,animated: true
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

