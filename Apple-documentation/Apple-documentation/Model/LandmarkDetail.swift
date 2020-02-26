//
//  ContentView.swift
//  Apple-documentation
//
//  Created by Shalu Garikapaty on 2/23/20.
//  Copyright © 2020 Shalini Garikapaty. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    var body: some View {
        
        VStack {
             // MARK:- Map View
          MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            
            // MARK:- IMAGE
            
            CircleImage(image:Image("Turtle Rock"))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.black)
            
            HStack {
                Text("Jaushua National Park")
                               .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }

           
            
        }
        .padding()
        
        Spacer()
    }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
}
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
