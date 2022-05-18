//
//  Music.swift
//  MusicPlayerSwiftUI
//
//  Created by Macservis on 13/05/22.
//

import Foundation
import SwiftUI

struct Music {
    
    var name: String? = "Music"
    var artistName: String? = "None"
    var imageName: String? = "nilmusic"
 
    
    
    init(name: String?, artistName: String?, imageName: String?) {
        
        
        if let name = name {
            self.name = name
        }
        
        if let artistName = artistName {
            self.artistName = artistName
        }
        
        if let imageName = imageName {
            self.imageName = imageName
        }
        
        
        
    }
    
    
    
}
