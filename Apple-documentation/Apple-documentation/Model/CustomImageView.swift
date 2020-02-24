//
//  CustomImageView.swift
//  Apple-documentation
//
//  Created by Shalu Garikapaty on 2/23/20.
//  Copyright © 2020 Shalini Garikapaty. All rights reserved.
//

import SwiftUI

struct CustomImageView: View {
    var body: some View {
        Image("turtlerock")
        .clipShape(Circle())
        
            .overlay(Circle().stroke(Color.black, lineWidth:4))
        .shadow(radius: 10)
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView()
    }
}
