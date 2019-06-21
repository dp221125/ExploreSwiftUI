//
//  Data.swift
//  ExploreSwiftUI
//
//  Created by MilKyo on 2019/06/20.
//  Copyright © 2019 MilKyo. All rights reserved.
//
import SwiftUI

let landmarkData: [Landmark] = loadData()

func loadData() -> [Landmark] {
    let decoder = JSONDecoder()
    
   if let landmarkDataAsset = NSDataAsset(name: "landmarkData")   {
        do {
            let landmark = try decoder.decode([Landmark].self, from: landmarkDataAsset.data)
            
            return landmark
        }catch{
            print(error.localizedDescription)
        }

    }
    
    return [Landmark]()
}

