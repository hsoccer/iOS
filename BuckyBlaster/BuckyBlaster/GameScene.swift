//
//  GameScene.swift
//  BuckyBlaster
//
//  Created by 河野遥希 on 2017/12/10.
//  Copyright © 2017年 test. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let introLabel = childNode(withName: "introLabel")
        
        if(introLabel != nil) {
            let fadeOut = SKAction.fadeOut(withDuration: 1.5)
            
            introLabel?.run(fadeOut, completion: {
                let doors = SKTransition.doorway(withDuration: 1.5)
                let shooterScene = SKScene(fileNamed: "ShooterScene")
                
                self.view?.presentScene(shooterScene!, transition: doors)
            })
            
            
            
            
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    //Called before each frame is renderd
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
