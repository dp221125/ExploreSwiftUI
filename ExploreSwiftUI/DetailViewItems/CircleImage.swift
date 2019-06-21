//
//  CircleImage.swift
//  ExploreSwiftUI
//
//  Created by Milkyo on 2019/06/20.
//  Copyright © 2019 MilKyo. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(height: 250)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
#endif
