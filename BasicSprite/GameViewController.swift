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
    }
    
    // http://stackoverflow.com/questions/25651969/setting-device-orientation-in-swift-ios
    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
