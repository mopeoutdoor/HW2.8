//
//  ViewController.swift
//  HW2.8
//
//  Created by Irina Kopchenova on 21.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit
import QuickLook

class Gallery: UIViewController {

    let galleryImages = Image.getGalleryImages()
}

extension Gallery: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return galleryImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell",
                                                      for: indexPath) as! GalleryCollectionViewCell
        cell.imageView.image = UIImage(named: galleryImages[indexPath.item].name)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        previewController.delegate = self
        previewController.currentPreviewItemIndex = indexPath.item
        present(previewController, animated: true)
    }
}

extension Gallery: QLPreviewControllerDelegate, QLPreviewControllerDataSource {
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return galleryImages.count
    }
    
    func previewController(_ controller: QLPreviewController,
                           previewItemAt index: Int) -> QLPreviewItem {
        let url = Bundle.main.url(forResource: galleryImages[index].name,
                                  withExtension: "")!
        return url as QLPreviewItem
    }
}
