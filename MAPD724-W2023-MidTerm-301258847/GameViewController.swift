//
//  GameViewController.swift
//  MAPD724-W2023-MidTerm-301258847
//  Name: Po Lam Wong, Lizolet
//  Student ID: 301258847
//  Description: Modify Mail Pilot
//
//  Created by Po Lam Wong on 28/2/2023.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var LivesLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var StartLabel: UILabel!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var EndLabel: UILabel!
    @IBOutlet weak var RestartButton: UIButton!
    
    var currentScene: GKScene?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        presentStartScene()
        
        // Initialize the lives and score
        CollisionManager.gameViewController = self
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func updateLivesLabel()
    {
        LivesLabel.text = "Lives: \(ScoreManager.Lives)"
    }
    
    func updateScoreLabel()
    {
        ScoreLabel.text = "Score: \(ScoreManager.Score)"
    }
    
    func setScene(sceneName: String) -> Void
    {
        currentScene = GKScene(fileNamed: sceneName)
        
        if let scene = currentScene!.rootNode as! SKScene?
        {
            scene.scaleMode = .aspectFill
            
            if let view = self.view as! SKView?
            {
                view.presentScene(scene)
                view.ignoresSiblingOrder = true
            }
        }
    }
    
    func presentStartScene()
    {
        ScoreLabel.isHidden = true
        LivesLabel.isHidden = true
        StartButton.isHidden = false
        StartLabel.isHidden = false
        setScene(sceneName: "StartScene")
    }
    
    func presentEndScene()
    {
        ScoreLabel.isHidden = true
        LivesLabel.isHidden = true
        RestartButton.isHidden = false
        EndLabel.isHidden = false
        setScene(sceneName: "EndScene")
    }
    
    @IBAction func startButton_Pressed(_ sender: UIButton) {
        StartButton.isHidden = true
        StartLabel.isHidden = true
        ScoreLabel.isHidden = false
        LivesLabel.isHidden = false
        
        ScoreManager.Score = 0
        ScoreManager.Lives = 5
        updateLivesLabel()
        updateScoreLabel()
        
        setScene(sceneName: "GameScene")
    }
    
    @IBAction func restartButton_Pressed(_ sender: UIButton)
    {
        RestartButton.isHidden = true
        EndLabel.isHidden = true
        ScoreLabel.isHidden = false
        LivesLabel.isHidden = false
        ScoreManager.Score = 0
        ScoreManager.Lives = 5
        updateLivesLabel()
        updateScoreLabel()
        
        setScene(sceneName: "GameScene")
    }
}
