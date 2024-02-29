//
//  model.swift
//  prognosis+
//
//  Created by UMESH KUMAR on 15/08/23.
//

import Foundation
import SwiftUI

struct course:Codable{
    var name : String = "Swift"
    var imgName : String = "profile"
    var img : Image{
        Image(imgName)
    }
}
