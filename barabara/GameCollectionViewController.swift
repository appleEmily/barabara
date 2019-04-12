//
//  GameCollectionViewCell.swift
//  barabara
//
//  Created by 野崎絵未里 on 2019/04/12.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class GameCollectionViewController: UIViewController {
    
    @IBOutlet weak var imgView1: UIImageView!
    
    @IBOutlet weak var imgView2: UIImageView!
    
    @IBOutlet weak var imgView3: UIImageView!
    
    @IBOutlet weak var showScore: UILabel!
    
    var timer: Timer! //時間によって動くものを作りたい
    var score: Int = 1000
    let defaults: UserDefaults = UserDefaults.standard
    
    let width: CGFloat = UIScreen.main.bounds.size.width
    
    var positionX: [CGFloat] = [0.0, 0.0, 0.0]
    
    var dx: [CGFloat] = [1.0, 0.5, -1.0]
    
//    func start() {
    
    @objc func up() {
        showScore.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self,
                                     selector: #selector(self.up), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        positionX = [width/2, width/2, width/2]
        self.up()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func upup() {
        for i in 0..<3 {
            if positionX[i] > width || positionX[i] < 0 {
                dx[i] += dx[i] * (-1)
            }
            positionX[i] += dx[i]
        }
        imgView1.center.x = positionX[0]
        imgView2.center.x = positionX[1]
        imgView3.center.x = positionX[2]
    }
    
}
