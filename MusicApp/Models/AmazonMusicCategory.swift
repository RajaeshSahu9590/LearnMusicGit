//
//  AmazonMusicCategory.swift
//  AmazonMusicDemoApp
//
//  Created by UTTAM on 25/01/21.
//  Copyright © 2021 UTTAM. All rights reserved.
//

import Foundation


struct AmazonMusicCategory {
    var categoryTitle: String = ""
    var songArray: [AmazonMusicModel] = [AmazonMusicModel]()
    
    static func getCategoryArray() -> [AmazonMusicCategory] {
        var modelArray = [AmazonMusicCategory]()
        let popularAlbum = popularHindi()
        
        let popularOldSong = oldSongs()
        
        modelArray.append(popularAlbum)
        
        modelArray.append(popularOldSong)
        modelArray.append(popularAlbum)
        modelArray.append(popularOldSong)
        
        return modelArray
    }
    
    static func popularHindi() -> AmazonMusicCategory
    {
        let kabirSingh = AmazonMusicModel(image: "img90", title: "Kabir Singh", description: "Arijit Singh,variaus Artist")
        
        let kedarNath = AmazonMusicModel(image: "img100", title: "Kedar Nath", description: "Sushant Singh Rajput,Amit Trivedi")
        
        let bahubali = AmazonMusicModel(image: "imgPark", title: "Bahubali", description: "Prabhas,Tamana,prakash jha")
        
        let krish = AmazonMusicModel(image: "RHTDM", title: "Krish", description: "HRithik Roshan,kangana Raunawat")
        
        let dhoom = AmazonMusicModel(image: "imgDarbaan", title: "Dhoom", description: "Aamir khan,Abhishek Bachchan")
        
        let populerAlbum = AmazonMusicCategory(categoryTitle: "Popular Hindi Album", songArray: [kabirSingh,bahubali,krish,dhoom,kedarNath])
        
        return populerAlbum
        
    }
    
    static func oldSongs() -> AmazonMusicCategory {
        let aashiqi = AmazonMusicModel(image: "Aashiqi2", title: "Aashiqi2", description: "Shrada kapoor, Arijit singh")
        
        let bandish = AmazonMusicModel(image: "bandish", title: "Bandish", description: "Shrada kapoor, Arijit singh")
        
        let msDhoni = AmazonMusicModel(image: "msdhoni", title: "MSDhoni", description: "Shrada kapoor, Arijit singh")
        
        let villan = AmazonMusicModel(image: "villan", title: "Villan", description: "Shrada kapoor, Arijit singh")
        
        let shorCity = AmazonMusicModel(image: "ShorCity", title: "ShorCity", description: "Shrada kapoor, Arijit singh")
        
        let aeDil = AmazonMusicModel(image: "AeDil", title: " Ae Dil Hai ", description: "Shrada kapoor, Arijit singh")
        
        let drive = AmazonMusicModel(image: "Drive", title: " Drive ", description: "Shrada kapoor, Arijit singh")
        
        let popularSong = AmazonMusicCategory(categoryTitle: "Old Songs", songArray: [aashiqi,bandish,msDhoni,villan,shorCity,aeDil,drive])
        
        return popularSong
        
    }
    
}

