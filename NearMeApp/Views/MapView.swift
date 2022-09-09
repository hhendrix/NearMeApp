//
//  MapView.swift
//  NearMeApp
//
//  Created by Harry Lopez on 8/09/22.
//

import SwiftUI
import UIKit
import MapKit


struct MapView: UIViewRepresentable {
    
    let landmarks: [LandMark]
   
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
   
    func makeUIView(context: Context) -> MKMapView{
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        
        return map
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        updateAnnottations(from: uiView)
    }
    
    private  func updateAnnottations(from mapview: MKMapView){
        mapview.removeAnnotations(mapview.annotations)
        let annotations = self.landmarks.map(LandMarkAnnotation.init)
        mapview.addAnnotations(annotations)
        
    }
    
}


