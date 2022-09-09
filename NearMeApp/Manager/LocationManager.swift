//
//  LocationManager.swift
//  NearMeApp
//
//  Created by Harry Lopez on 8/09/22.
//

import Foundation
import MapKit

class LocationManager : NSObject {
    
    private let locationManager = CLLocationManager()
    var location:CLLocation? = nil
    
    override init() {
        super.init()
        
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
    
}


extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else{
            return
        }
        self.location = location
    }
    
}