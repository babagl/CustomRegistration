//
//  UserViewModel.swift
//  QrCodeGen
//
//  Created by Abdoulaye Aliou SALL on 12/03/2023.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

class UserViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var numeroTel: String = ""

    // Autres propriétés et méthodes nécessaires
    
    
    func generateQRCode() -> UIImage? {
            let data = "\(name) \(email) \(numeroTel)".data(using: .utf8)

            let filter = CIFilter.qrCodeGenerator()
            filter.setValue(data, forKey: "inputMessage")

            if let outputImage = filter.outputImage {
                let context = CIContext()
                let cgImage = context.createCGImage(outputImage, from: outputImage.extent)
                return UIImage(cgImage: cgImage!)
            } else {
                return nil
            }
        }
}
