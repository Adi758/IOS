//
//  Model.swift
//  PamidalaGalleryApp
//
//  Created by Pamidala,Chandra Adithya on 3/14/23.
//

import Foundation

struct AppConstants {
    var CC = Category(with: AppConstants.carKeywords, pictures: AppConstants.carPictures)
    var bc = Category(with: AppConstants.bikeKeywords, pictures: AppConstants.bikePictures)
    var lc = Category(with: AppConstants.laptopKeywords, pictures: AppConstants.laptopPictures)
    var mc = Category(with: AppConstants.mobileKeywords, pictures: AppConstants.mobilePictures)
    var wc = Category(with: AppConstants.watchKeywords, pictures: AppConstants.watchPictures)
    
    
    
    static let carKeywords = ["BMW", "Lambo", "Ferrari", "Jeep","Car","car","cars","Cars"]
    static let carPictures = ["BMW", "Lambo", "Ferrari", "Jeep", "AUDI"]
    
    static let bikeKeywords = ["Bullet", "Honda", "Raven", "Suzuki", "Bike", "bike", "bikes", "Bikes"]
    static let bikePictures = ["Bullet", "Honda", "Raven", "Suzuki", "R15"]
    
    static let laptopKeywords = ["Dell", "Hp", "Mac", "Lenovo", "Laptop", "laptop", "laptops", "Laptops"]
    static let laptopPictures = ["Dell", "Hp", "Mac", "Lenovo", "Asus"]
    
    static let mobileKeywords = ["Iqoo", "Apple", "Realme", "Samsung", "Mobile", "mobile", "mobiles", "Mobiles"]
    static let mobilePictures = ["Iqoo", "Apple", "Realme", "Samsung", "Redmi"]
    
    static let watchKeywords = ["Noise", "Iwatch", "Realme", "Samsung", "Watch", "watch", "watches", "Watches"]
    static let watchPictures = ["Noise", "Iwatch", "Realm", "Samsun", "Redm"]

    // add more categories here
    
    static let randomValueOfLikesAndDislikes: UInt32 = 100
    static let defaultSearchMessage = "Sorry! No pictures found for the search. Try again with a different search keyword."
    static let defaultCommentMessage = "No comments yet."
}

struct Picture {
    let name: String
    var likeCount: String
    var dislikeCount: String
    var comments: [String]
    
}

class Category {
    var keywords: [String]
    var pictures: [Picture]
    
    init(with keywords: [String], pictures: [String]) {
        // initialize the properties here
        self.keywords = keywords
        self.pictures = []
        
        for pictureName in pictures {
                    let likeCount = String(arc4random_uniform(AppConstants.randomValueOfLikesAndDislikes))
                    let dislikeCount = String(arc4random_uniform(AppConstants.randomValueOfLikesAndDislikes))
                    
                    let picture = Picture(name: pictureName, likeCount: likeCount, dislikeCount: dislikeCount, comments: [])
                    
                    self.pictures.append(picture)
                }
        }
 }
let carCategory = Category(with: AppConstants.carKeywords, pictures: AppConstants.carPictures)

let bikeCategory = Category(with: AppConstants.bikeKeywords, pictures: AppConstants.bikePictures)

let laptopCategory = Category(with: AppConstants.laptopKeywords, pictures: AppConstants.laptopPictures)

let mobileCategory = Category(with: AppConstants.mobileKeywords, pictures: AppConstants.mobilePictures)

let watchCategory = Category(with: AppConstants.watchKeywords, pictures: AppConstants.watchPictures)

