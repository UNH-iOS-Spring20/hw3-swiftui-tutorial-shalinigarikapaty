//
//  ContentView.swift
//  Apple-documentation
//
//  Created by Shalu Garikapaty on 2/23/20.
//  Copyright © 2020 Shalini Garikapaty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
             // MARK:- Map View
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            // MARK:- IMAGE
            
        CustomImageView()
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
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
