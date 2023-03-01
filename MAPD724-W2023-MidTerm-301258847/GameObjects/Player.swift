//
//  Player.swift
//  MAPD724-W2023-MidTerm-301258847
//
//  Created by Po Lam Wong on 28/2/2023.
//

import GameplayKit
import SpriteKit

class Player : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 1.5)
        Start()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
       CheckBounds()
    }
    
    override func CheckBounds()
    {
        //constrain the player on the left boundary
        if(position.y <= -270)
        {
            position.y = -270
        }
        
        //constrain the player on the right boundary
        if(position.y >= 270)
        {
            position.y = 270
        }
    }
    
    override func Reset()
    {
        position.x = -540
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}

