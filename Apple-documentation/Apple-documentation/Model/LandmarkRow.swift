//
//  LandmarkRow.swift
//  Apple-documentation
//
//  Created by Shalu Garikapaty on 2/26/20.
//  Copyright © 2020 Shalini Garikapaty. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50 , height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark:landmarkData[0])
    }
}
