
import SpriteKit
import GameplayKit
import AVFoundation
import UIKit

class EndScene: SKScene {

    //instance varaibles
    var ocean1: OceanLandscape?
    var ocean2: OceanLandscape?

    
    override func sceneDidLoad()
    {
        name = "END"
        
        //add the ocean to the Scene
        ocean1 = OceanLandscape()
        ocean1?.Reset()
        addChild(ocean1!)
        
        //add the second ocean to the scene
        ocean2 = OceanLandscape()
        ocean2?.position.x = -627
        addChild(ocean2!)
        
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
        
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
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
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean1?.Update()
        ocean2?.Update()
    }
}
