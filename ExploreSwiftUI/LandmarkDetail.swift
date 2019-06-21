//
//  ContentView.swift
//  ExploreSwiftUI
//
//  Created by Milkyo on 2019/06/19.
//  Copyright © 2019 MilKyo. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image:  Image(landmark.imageName))
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                }
                .padding()
            Spacer()
            }
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
