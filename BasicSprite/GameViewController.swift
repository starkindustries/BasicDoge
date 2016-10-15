//
//  GameViewController.swift
//  BasicSprite
//
//  Created by Zion Perez on 10/15/16.
//  Copyright © 2016 Zion Perez. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let scene = GameScene(fileNamed: "GameScene") else {
            print("GameViewController: error initiating GameScene")
            return
        }
        
        guard let view = self.view as! SKView? else {
            print("GameViewController: error initiating SKView")
            return
        }
        
        scene.scaleMode = .aspectFill
        view.presentScene(scene)
        view.ignoresSiblingOrder = true
        view.showsFPS = true
        view.showsNodeCount = true
        
        /*if let scene = GameScene(fileNamed: "GameScene"){
            scene.scaleMode = .aspectFill
            // Present the scene
            if let view = self.view as! SKView? {
                view.presentScene(scene)
                view.ignoresSiblingOrder = true
                view.showsFPS = true
                view.showsNodeCount = true
            }
        }*/
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
