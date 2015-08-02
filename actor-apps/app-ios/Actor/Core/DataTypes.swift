//
//  DataTypes.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 13.07.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class BannerContent {
 
    let fileId: Int64
    let fileAccesHash: Int64
    let fileSize: Int32
    let adUrl: String
    let bannerId: Int32
    
    init(bannerId: Int32, fileId: Int64, fileAccesHash: Int64, fileSize: Int32, adUrl: String) {
        self.bannerId = bannerId
        self.fileId = fileId
        self.fileAccesHash = fileAccesHash
        self.fileSize = fileSize
        self.adUrl = adUrl
    }
}

extension BannerContent {
    class func fromJson(jsonContent: AMJsonContent) -> BannerContent? {
        
        var json = JSON(string: jsonContent.getJson())
        
        if json["dataType"].string == "banner" {
            if let fileId = json["data"]["image"]["fileId"].int64,
               let bannerId = json["data"]["bannerId"].int32
               let fileAccessHash = json["data"]["image"]["fileAccessHash"].int64,
               let fileSize = json["data"]["image"]["fileSize"].int32,
               let advertUrl = json["data"]["advertUrl"].string {
                return BannerContent(bannerId: bannerId, fileId: fileId, fileAccesHash: fileAccessHash, fileSize: fileSize, adUrl: advertUrl)
            }
        }
        
        return nil
    }
}