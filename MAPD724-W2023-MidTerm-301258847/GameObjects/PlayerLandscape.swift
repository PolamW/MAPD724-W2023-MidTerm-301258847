//
//  PlayerLandscpe.swift
//  MAPD724-W2023-MidTerm-301258847
//  Name: Po Lam Wong, Lizolet
//  Student ID: 301258847
//  Description: Modify Mail Pilot
//
//  Created by Po Lam Wong on 28/2/2023.
//

import GameplayKit
import SpriteKit

class PlayerLandscape : GameObject
{
    //initializer
    init()
    {
        //adjusted the size of player from 2.0 to 1.0
        super.init(imageString: "planeLandscape", initialScale: 1.0)
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
        //constrain the player on the bottom boundary
        if(position.y <= -145)
        {
            position.y = -145
        }
        
        //constrain the player on the top boundary
        if(position.y >= 145)
        {
            position.y = 145
        }
    }
    
    override func Reset()
    {
        position.x = -320
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}

