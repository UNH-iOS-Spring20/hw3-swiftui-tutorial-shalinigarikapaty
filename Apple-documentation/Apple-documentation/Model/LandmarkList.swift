//
//  LandmarkList.swift
//  Apple-documentation
//
//  Created by Shalu Garikapaty on 2/26/20.
//  Copyright © 2020 Shalini Garikapaty. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var ShowFavoritesOnly = true
    var body: some View {
        
        NavigationView {
//        List {
            
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
            
            List {
                Toggle(isOn: $ShowFavoritesOnly) {
                    Text("Show Favorites Only")
                }
            
        
            
            ForEach(landmarkData) { landmark in
                if !self.ShowFavoritesOnly || landmark.isFavorite {
                

                NavigationLink(destination: LandmarkDetail(landmark: landmark))
                { LandmarkRow(landmark: landmark)
                }
        }
        }
            .navigationBarTitle(Text("Landmarks"))
    }
}
        
        
    }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        
        //MARK:- method 1
//         .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
             .previewDisplayName(deviceName)
    }
}
}
}
