import Photos

class CustomPhotoAlbum {
    
    static let customPhotoAlbumName = "Analysis Reports"
    static let sharedInstance = CustomPhotoAlbum()
    
    var phAsset: PHAssetCollection!
    
    // invokes upon loading the view controller
    init()
    {
        // Initializes the desired custom photo album name if it does not already exist on the device; attempts to fetch the desired asset and adds it into a PHAssetCollection object
        func getAsset() -> PHAssetCollection!
        {
            let options = PHFetchOptions()
            
            options.predicate = NSPredicate(format: "title = %@", CustomPhotoAlbum.customPhotoAlbumName)
            
            let assetCollection = PHAssetCollection.fetchAssetCollections(with: .album, subtype: .any, options: options)
            
            if let assetObj: AnyObject = assetCollection.firstObject {
                return assetCollection.firstObject as PHAssetCollection!
            }
            
            
            return nil
        }
        
        if let phAsset = getAsset() {
            self.phAsset = phAsset
            return
        }
        
        PHPhotoLibrary.shared().performChanges(
        {
            PHAssetCollectionChangeRequest.creationRequestForAssetCollection(withTitle: CustomPhotoAlbum.customPhotoAlbumName)
        })
        {
            success, _ in
            
            if success {
                self.phAsset = getAsset()
           }
        }
    }
    
    // Will attempt to read the newly created PHAssetCollection Object and invokes a request to create a local device asset
    func saveImage(image: UIImage)
    {
        if phAsset == nil {
            return
        }
        
        PHPhotoLibrary.shared().performChanges({
            
            let assetCR = PHAssetChangeRequest.creationRequestForAsset(from: image)
            let placeholder = assetCR.placeholderForCreatedAsset
            let albumCR = PHAssetCollectionChangeRequest(for: self.phAsset)
            albumCR?.addAssets([placeholder] as NSArray)
            
        },  completionHandler: nil)
    }
    
    
}
