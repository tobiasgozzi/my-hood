//
//  Post.swift
//  my-Hood
//
//  Created by Tobias Gozzi on 20.06.16.
//  Copyright © 2016 Tobias Gozzi. All rights reserved.
//

import Foundation

class Post {
    var title: String
    var imagePath: String
    var postDesc: String
    
    init (title: String, imagePath: String, postDesc: String) {
        self.title = title
        self.imagePath = imagePath
        self.postDesc = postDesc
    }
    
}