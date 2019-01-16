//
//  UIImage.swift
//  Sberleasing
//
//  Created by Пользователь on 03.10.2018.
//  Copyright © 2018 Sberbank Leasing Frontend System. All rights reserved.
//

import Foundation
import UIKit

public enum ImageFormat {
    case PNG
    case JPEG(CGFloat)
}

extension UIImage {
    
    public func base64(format: ImageFormat) -> String {
        var imageData: Data
        switch format {
        case .PNG: imageData = self.pngData()!
            case .JPEG(let compression): imageData = self.jpegData(compressionQuality: compression)!
        }
        
        return imageData.base64EncodedString()
    }
    
    public func base64ServerFormat(format: ImageFormat) -> String {
        return base64(format:format)
    }
    
    class func convertBase64ToImage(imageString: String) -> UIImage? {
        let imageData = Data(base64Encoded: imageString, options: Data.Base64DecodingOptions.ignoreUnknownCharacters)!
        return UIImage(data: imageData)!
    }

}
