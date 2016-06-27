//
//  Post.swift
//  my-Hood
//
//  Created by Tobias Gozzi on 20.06.16.
//  Copyright © 2016 Tobias Gozzi. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    var _title: String!
    var _imagePath: String!
    var _postDesc: String!
    
    init (title: String, imagePath: String, postDesc: String) {
        self._title = title
        self._imagePath = imagePath
        self._postDesc = postDesc
    }
    override init() {
        
    }
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._postDesc = aDecoder.decodeObjectForKey("postDesc") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
    }

    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(_imagePath, forKey: "imagePath")
        aCoder.encodeObject(_title, forKey: "title")
        aCoder.encodeObject(_postDesc, forKey: "postDesc")
    }
    
    var title: String {
            return _title
    }

    var imagePath: String {
            return _imagePath
    }

    var postDesc: String {
            return _postDesc
    }

}