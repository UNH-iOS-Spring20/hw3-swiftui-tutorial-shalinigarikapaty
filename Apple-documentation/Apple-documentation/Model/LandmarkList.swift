//
//  LandmarkList.swift
//  Apple-documentation
//
//  Created by Shalu Garikapaty on 2/26/20.
//  Copyright © 2020 Shalini Garikapaty. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
//        List {
            
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
        
            
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark))
                { LandmarkRow(landmark: landmark)
                }
       // }
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
