//
//  GameProtocol.swift
//  MAPD724-W2023-MidTerm-301258847
//
//  Created by Po Lam Wong on 28/2/2023.
//

protocol GameProtocol
{
    //Initialization
    func Start()
    
    //update every frame
    func Update()
    
    //check if the position is outside the bounds of the screen
    func CheckBounds()
    
    //a method to reset the position
    func Reset()
}

