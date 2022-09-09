//
//  PlaceListView.swift
//  NearMeApp
//
//  Created by Harry Lopez on 8/09/22.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let lanndMark : [LandMark]
    var onTap: () -> ()
    
    var body: some View {
        VStack {
            
            HStack{
              
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(.blue)
                .gesture(TapGesture().onEnded(self.onTap))
            
            List(self.lanndMark, id: \.id){ landkmark in
                VStack(alignment:.leading,spacing: 5){
                    
                    Text("\(landkmark.name)")
                        .lineLimit(nil)
                        
                        .foregroundColor(.orange)
                        .font(.title3)
                        .padding(5)
                        
                    
                    Text("Ubicación \(landkmark.title)")
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                        
                    
                    
                }
                
            }.animation(nil)
                .listStyle(.plain)
            
        }.cornerRadius(16)
         
           
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(lanndMark: [LandMark(placemark: MKPlacemark())], onTap: {})
    }
}
