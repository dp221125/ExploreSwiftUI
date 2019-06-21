//
//  LandmarkList.swift
//  ExploreSwiftUI
//
//  Created by MilKyo on 2019/06/20.
//  Copyright © 2019 MilKyo. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        
        NavigationView {
            List(landmarkData) { landmark in
                
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"),displayMode: .large)
        }

    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
