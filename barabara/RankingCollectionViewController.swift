//
//  RankingCollectionViewCell.swift
//  barabara
//
//  Created by 野崎絵未里 on 2019/04/12.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class RankingCollectionViewController: UIViewController {
    
    
    @IBOutlet weak var rankingLabel1: UILabel!
    
    @IBOutlet weak var rankingLabel2: UILabel!
    
    @IBOutlet weak var rankingLabel3: UILabel!
    
    let defaults: UserDefaults = UserDefaults.standard
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rankingLabel1.text = String(defaults.integer(forKey: "score1"))
        rankingLabel2.text = String(defaults.integer(forKey: "score2"))
        rankingLabel3.text = String(defaults.integer(forKey: "score3"))
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
