//
//  UserView.swift
//  QrCodeGen
//
//  Created by Abdoulaye Aliou SALL on 12/03/2023.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var viewModel: UserViewModel
    @State private var qrCodeImage: UIImage?
    var body: some View {
        VStack {
                    TextField("Nom", text: $viewModel.name)
                    TextField("Email", text: $viewModel.email)
                    TextField("Telephone ", text: $viewModel.numeroTel)
            
            Button("Générer le code QR") {
                            qrCodeImage = viewModel.generateQRCode()
                        }

                        if let image = qrCodeImage {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                        }
                }
    }
}

//struct UserView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserView()
//    }
//}
