//
//  Ocean.swift
//  MAPD724-W2023-MidTerm-301258847
//
//  Created by Po Lam Wong on 28/2/2023.
//

import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    // constructor / initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -1065)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 1065
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
}


