//
//  Landmark.swift
//  NearMeApp
//
//  Created by Harry Lopez on 8/09/22.
//

import Foundation
import MapKit

struct LandMark {
    
    let placemark : MKPlacemark
    
    var id : UUID {
        return UUID()
    }
    
    var name : String {
        self.placemark.name ?? ""
    }
    
    var title : String {
        self.placemark.title ?? ""
    }
    
    var coordinate : CLLocationCoordinate2D {
        self.placemark.coordinate
    }
    
}
