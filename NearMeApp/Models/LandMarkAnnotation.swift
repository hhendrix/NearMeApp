//
//  LandMarkAnnotation.swift
//  NearMeApp
//
//  Created by Harry Lopez on 8/09/22.
//

import Foundation
import MapKit

final class LandMarkAnnotation : NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
     init(landmarK:LandMark) {
         self.title = landmarK.name
         self.coordinate = landmarK.coordinate
    }
    
    
}
