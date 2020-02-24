//
//  Image.swift
//  HW2.8
//
//  Created by Alex Sander on 24.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import Foundation

struct Image {
    let name: String
}

extension Image {
    static func getGalleryImages() -> [Image] {
        var images = [Image]()
        
        for i in 0..<20 {
            images.append(Image(name: "photo_\(i).jpg"))
        }
        return images
    }
}
