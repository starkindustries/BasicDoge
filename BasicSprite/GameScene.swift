//
//  GameScene.swift
//  BasicSprite
//
//  Created by Zion Perez on 10/15/16.
//  Copyright © 2016 Zion Perez. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    var dogAtlas: SKTextureAtlas!
    var dogSprite: SKSpriteNode!
    var direction: Int!
    
    override func sceneDidLoad() {
        direction = 0
        dogAtlas = SKTextureAtlas(named: "DogSprite")
        
        // ***
        // How do you use SKTextureFilteringNearest with SKTextureAtlas
        // http://stackoverflow.com/questions/19992048/how-do-you-use-sktexturefilteringnearest-with-sktextureatlas
        // It seems that when you set the filtering mode for a SKTexture coming from an SKTextureAtlas it sets the filtering mode for everything coming out of that atlas.
        dogAtlas.textureNamed("0.png").filteringMode = SKTextureFilteringMode.nearest
        // ***
        
        dogSprite = SKSpriteNode(texture: dogAtlas.textureNamed("0.png"))
        dogSprite.xScale = 6.0
        dogSprite.yScale = 6.0
        self.addChild(dogSprite)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for _ in touches {
            self.animateDog()
        }
    }
    
    func animateDog(){
        direction = direction + 1
        let temp = direction % 9
        print("dog animation: " + String(temp))
        
        if temp == 0 {
            dogSprite.removeAllActions()
            dogSprite.texture = dogAtlas.textureNamed("0.png")
        } else if temp == 1 {
            dogSprite.run(SKAction.repeatForever(SKAction.animate(with: [
                dogAtlas.textureNamed("0.png"),
                dogAtlas.textureNamed("1.png"),
                dogAtlas.textureNamed("2.png"),
                dogAtlas.textureNamed("3.png")
                ], timePerFrame: 0.2)))
        } else if temp == 2 {
            dogSprite.run(SKAction.repeatForever(SKAction.animate(with: [
                dogAtlas.textureNamed("4.png"),
                dogAtlas.textureNamed("5.png"),
                dogAtlas.textureNamed("6.png"),
                dogAtlas.textureNamed("7.png")
                ], timePerFrame: 0.2)))
        } else if temp == 3 {
            dogSprite.run(SKAction.repeatForever(SKAction.animate(with: [
                dogAtlas.textureNamed("8.png"),
                dogAtlas.textureNamed("9.png"),
                dogAtlas.textureNamed("10.png"),
                dogAtlas.textureNamed("11.png")
                ], timePerFrame: 0.2)))
        } else if temp == 4 {
            dogSprite.run(SKAction.repeatForever(SKAction.animate(with: [
                dogAtlas.textureNamed("12.png"),
                dogAtlas.textureNamed("13.png"),
                dogAtlas.textureNamed("14.png"),
                dogAtlas.textureNamed("15.png")
                ], timePerFrame: 0.2)))
        } else if temp == 5 {
            dogSprite.run(SKAction.repeatForever(SKAction.animate(with: [
                dogAtlas.textureNamed("16.png"),
                dogAtlas.textureNamed("17.png"),
                dogAtlas.textureNamed("18.png"),
                dogAtlas.textureNamed("19.png")
                ], timePerFrame: 0.2)))
        } else if temp == 6 {
            dogSprite.run(SKAction.repeatForever(SKAction.animate(with: [
                dogAtlas.textureNamed("20.png"),
                dogAtlas.textureNamed("21.png"),
                dogAtlas.textureNamed("22.png"),
                dogAtlas.textureNamed("23.png"),
                dogAtlas.textureNamed("24.png"),
                dogAtlas.textureNamed("25.png"),
                dogAtlas.textureNamed("26.png")
                ], timePerFrame: 0.2)))
        } else if temp == 7 {
            dogSprite.run(SKAction.sequence([
                SKAction.animate(with: [dogAtlas.textureNamed("27.png")], timePerFrame: 2.0),
                SKAction.repeatForever(SKAction.animate(with: [
                    dogAtlas.textureNamed("28.png"),
                    dogAtlas.textureNamed("29.png")
                    ], timePerFrame: 0.4))
                ]))
        } else if temp == 8 {
            dogSprite.run(SKAction.sequence([
                    SKAction.animate(with: [dogAtlas.textureNamed("30.png")], timePerFrame: 2.0),
                    SKAction.repeatForever(SKAction.animate(with: [
                        dogAtlas.textureNamed("31.png"),
                        dogAtlas.textureNamed("32.png"),
                        dogAtlas.textureNamed("33.png")
                        ], timePerFrame: 0.2))
                ]))
        }
    }
}
