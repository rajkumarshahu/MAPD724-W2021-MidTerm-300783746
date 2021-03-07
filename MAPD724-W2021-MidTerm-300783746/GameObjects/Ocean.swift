//
//  Ocean.swift
//  Mail Pilot
//
//  Modified by Raj Kumar Shahu
//  Modified on 2021-03-03.
//  @Description: Adjust the Mail Pilot game so that player can play in landscape orientation.



import SpriteKit
import GameplayKit

class Ocean: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        if(position.x <= -773)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 773
    }
    
    // initialization
    override func Start()
    {
        zPosition = 0
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
