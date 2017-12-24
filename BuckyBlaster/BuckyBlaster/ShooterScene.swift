//
//  ShooterScene.swift
//  BuckyBlaster
//
//  Created by 河野遥希 on 2017/12/10.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit
import SpriteKit

class ShooterScene: SKScene {
    
    var score = 0
    var enemyCount = 10
    var shooterAnimation = [SKTexture]()
    
    override func didMove(to view: SKView) {
        self.initShooterScene()
    }
    
    func initShooterScene() {
        let shooterAtlas = SKTextureAtlas(named: "soccer")
        
        for index in 1...shooterAtlas.textureNames.count {
            let imgName = String(format: "soccer%01d", index)
            shooterAnimation += [shooterAtlas.textureNamed(imgName)]
        }
    }
}
