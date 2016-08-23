//
//  Sign.swift
//  LearnersQuiz
//
//  Created by Russell Blickhan on 5/21/16.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import Foundation

enum Sign: String {
    
    //ready
    case CurveAhead = "Curve ahead - slow down"
    case DestinationSign = "Distance and direction of destination"
    case DividedHighwayEndsAhead = "Divided highway ends ahead"
    case DoNotEnter = "Do not enter"
    case DoNotPass = "Do not pass"
    case HiddenSideRoadAhead = "Hidden side road ahead"
    case LeftOrRightOnly = "Right or left turn only"
    case LeftTurnOnly = "Left turn only"
    case MaxSpeed = "Maximum legal speed in good conditions"
    case MergingTrafficAhead = "Merging traffic ahead"
    case NoLeft = "No left turn"
    case NoParkingAllowed = "No parking allowed"
    case NoParkingTimeInterval = "No parking during time interval"
    case OneWay = "One way"
    case ParkingAllowedTimeInterval = "Parking allowed in time interval"
    case RailwayCrossing = "Railway crossing"
    case RightLaneEndsAhead = "Right lane ends ahead"
    case RoadNarrowsAhead = "Road narrows ahead"
    case SchoolZone = "School zone"
    case SlowerTrafficKeepRight = "Move into right lane if driving slowly"
    case Stop = "Stop"
    case StraightOnly = "Go straight only"
    case TwoWayTrafficAhead = "Two-way traffic ahead"
    case WindingRoadAhead = "Winding road ahead"
    case WinterTires = "Use winter tires or chains"
    case WrongWay = "Do not go this way"
    case Yield = "Yield the right-of-way"
    
    
    // copy from http://www.icbc.com/driver-licensing/Documents/drivers3.pdf
    
    
    
    case LowSpeedAhead = "Indicates a lower speed limit ahead"
    
    case Disaster = "Stay off this road during major disasters"
    
    
    
    
    case KeepRightExceptPass = "Keep right unless passing"
    
    case TwoWayTraffic = "Two-way traffic -- keep right unless passing"
    case PassingLane = "Passing lane ahead"
    case KeepRightDivider = "Keep right of the divider"
    case NoStoppingBetween = "No stopping between here and the next no-stopping sign"
    case NoStoppingDuring = "No stopping during posted times between here and the next sign"
    case NoBicycle = "No bicycle riding beyond this point"
    case NoRightTurn = "No right turn on red light"
    case SlowVehiclesUsePullouts = "Slow vehicles to use pullouts for the next stated distance"
    case SlowVehiclePulloutAhead = "Slow vehicle pullout stated meters ahead"
    case SlowVehiclePullout = "Slow vehicle pullout"
    case SlowTraffic = "Slow traffic delaying 5 vehicles must use pullout"
    case PedestrianActivated = "Pedestrian activated crosswalk -- preapre to stop if the light is flashing"
    case PedestrianCrosswalk = "Pedestrian crosswalk -- yield to people crossing"
    case SchoolCrosswalk = "School crosswalk -- yield to pedestrians -- if there is a crossing guard, follow directions"
    
    case PlaygroundNearby = "Playground nearby -- be prepared to slow down"
    case PlaygroundZone = "Playground zone -- 30 km/h limit is in effect every day from dawn to dusk"
    
    
    case ThroughOrLeft = "Go through or turn left"
    case ThroughOrRight = "Go through or turn right"
    case BothDirectionsTurnLeft = "Vehicles from both directions must turn left, no through traffic allowed"
    case BothLanesTurnLeft = "Vehicles in both these lanes must turn left"
    case GoStraightOnly = "Go straight only -- no turns"
    
    case NoRightTurnsDuring = "No right turns during posted times"
    case TimeLimitedParking = "Time-limited parking during posted times"
    case DoNotPark = "Do not park here"
    case ParkingNotAllowedDuring = "Parking is not allowed during posted times"
    case ParkingForDisabled = "Parking only for vehicles displaying the disables parking sign and carrying a person with disabilities"
    case OnlyBusses = "Only buses in this lane"
    case BusesAndHOV = "Only buses and HOVs in this lane -- may show how many people must be in the HOV"
    case ReservedLaneAhead = "Curb lane of cross street ahead is a reserved lane"
    case SharpCurve = "Sharp curve ahead -- slow to advisory speed shown"
    case RoadMerge = "Road merges with another road -- added lane to te right ahead"
    case HighwayEnds = "Divided highway ends ahead -- keep right"
    case NarrowStructure = "Narrow structure ahead -- often a bridge"
    case Bump = "Bump or rough road ahead"
    case Slippery = "Road may be slippery ahead"
    case SteepHill = "Steep hill ahead -- slow down"
    case StopSignAhead = "Stop sign ahead"
    case Roundabout = "Roundabout ahead"
    case SignalLights = "Signal lights ahead"
    case SignalLightsFlashing = "Signal lights ahead -- prepare to stop when lights are flashing"
    case PedestrianCrosswalkAhead = "Pedestrian crosswalk ahead"
    case SchoolCrosswalkAhead = "School crosswalk ahead"
    case SchoolBusStop = "School bus stop ahead"
    case Cyclists = "Cyclists may be on roadway"
    case FireTruckEntrance = "Fire truck entrance ahead"
    case TruckCrossing = "Truck crossing ahead"
    case HighwayExist = "Highway or freeway exit -- slow to advisory speed shown"
    case PavementEnds = "Pavement ends ahead"
    case HazardAhead = "Hazard or danger ahead -- turn right or left"
    case Deer = "Watch for deer ahead"
    case OpeningBridge = "Opening bridge ahead"
    case RocksOnRoad = "Watch for rocks on the roads ahead"
    case ObstructionRightOrLeft = "Obstruction -- keep right or left"
    case ObstructionRight = "Obstruction -- keep right"
    case ObstructionLeft = "Obstruction -- keep left"
    case Detour = "Detour ahead"
    case SoftShoulder = "Soft shoulder ahead -- stay off"
    case Construction = "Construction ahead"
    case TrafficPerson = "Traffic-control person ahead"
    case CrewWorking = "Crew working -- obey posted speed limit"
    case SurveyCrew = "Obey posted speed limit"
    case EndOfConstruction = "End of construction zone speed limit"
    case FineNotice = "Fine notice for speeding in a work zone"
    case Blasting = "Blasting ahead -- follow instructions on sign"
    
    case DirectionalSign = "Directional sign"
    case TransCanadaHighway = "Trans-Canada Highway route marker"
    case PrimaryHighway = "Primary highway marker sign"
    case Hospital = "Hospital nearby"
    case GasAvailable = "Gas available ahead"
    case Accommodation = "Accommodation ahead"
    case TravelInfo = "Travel information ahead"

    case RailwayCrossingSideRoad = "Railway crossing on side road ahead -- be prepared to stop"
    case NoPed = "No pedestrians allowed on roadway"
    
    
}