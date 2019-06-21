//
//  LandmarkRow.swift
//  ExploreSwiftUI
//
//  Created by MilKyo on 2019/06/20.
//  Copyright © 2019 MilKyo. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack() {
            Image(landmark.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            Text(landmark.name)
            Spacer()
        }

    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
