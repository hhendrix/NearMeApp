//
//  Coordinator.swift
//  NearMeApp
//
//  Created by Harry Lopez on 8/09/22.
//

import Foundation
import MapKit


final class Coordinator: NSObject, MKMapViewDelegate{
    
    var  control:MapView
    
    init(_ control: MapView){
        self.control = control
    }
    
    // MARK: - Delegates
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        
        if let annotationView = views.first {
            if let annotation = annotationView.annotation {
                if annotation is MKUserLocation {
                    
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                    mapView.setRegion(region, animated: true)
                }
            }
        }
        
    }
}
