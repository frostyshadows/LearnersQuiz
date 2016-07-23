//
//  Sign.swift
//  LearnersQuiz
//
//  Created by Russell Blickhan on 5/21/16.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import Foundation

enum Sign: String {
    
    // copy from http://www.icbc.com/driver-licensing/Documents/drivers3.pdf
    case Stop = "Stop"
    case Yield = "Yield the right-of-way"
    case DoNotEnter = "Do not enter"
    case NoPass = "No passing allowed at any time"
    case NoPed = "No pedestrians allowed on roadway"
    case NoLeft = "No left turn at intersection"
    
        // not sure if the commented out constants should be there
//    case DrivingReg = "Shows driving regulations"
//    case LaneUse = "Explains lane use"
//    case SchoolZone = "School zone signs are fluorescent yellow-green"
//    case MotoristServices = "Tells about motorist services"
//    case Permitted = "Shows a permitted action"
//    case NotPermitted = "Shows an action that is not permitted"
//    case Hazards = "Warns of hazards ahead"
//    case Construction = "Warns of contruction zones"
//    case Railway = "Railway crossing"
    case DistAndDir = "Shows distance and direction"
    case MaxSpeed = "The maxiumum legal speed when the road is bare and dry and visibility is good"
    case LowSpeedAhead = "Indicates a lower speed limit ahead"
    case Disaster = "Stay off this road during major disasters"
    case WrongWay = "Do not go this way"
    case OneWay = "One way = gives direction of traffic on cross street"
    case WinterTires = "Winter tires or chains must be used when sign is displayed"
    case KeepRight = "Move into right lane if driving slower than regular traffic"
    case SchoolZone = "School zone"
    case SlowerTrafficKeepRight = "Slower traffic keep right"
    
}