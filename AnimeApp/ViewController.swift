//
//  ViewController.swift
//  AnimeApp
//
//  Created by 西村映人 on 2020/09/07.
//  Copyright © 2020 西村映人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var animationImage: UIImageView!

//    画像データ格納用の配列を作成
    var images : Array<UIImage> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // 画像を配列に格納
        while let attackImage = UIImage(named: "attak\(images.count+1)") {
            images.append(attackImage)
        }
        
        
    }

    
    
    @IBAction func actionButton(_ sender: Any) {
        // アニメーションの適用
        animationImage.animationImages = images
        // 1.5秒間隔
        animationImage.animationDuration = 1.5
        // 1回繰り返し
        animationImage.animationRepeatCount = 1
        // アニメーションを開始
        animationImage.startAnimating()
    }
    
}

