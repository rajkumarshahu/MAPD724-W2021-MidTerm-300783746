
//  Island.swift
//  Mail Pilot
//
//  Modified by Raj Kumar Shahu
//  Modified on 2021-03-03.
//  @Description: Adjust the Mail Pilot game so that player can play in landscape orientation.

import SpriteKit
import GameplayKit

class Island: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        if(position.x <= -730)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 730
        // get a pseudo-random number from -313 to 313 =
        let randomY:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    // initialization
    override func Start()
    {
        zPosition = 1
        Reset()
        dx = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.x -= dx!
    }
}
