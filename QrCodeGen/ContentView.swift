//
//  ContentView.swift
//  QrCodeGen
//
//  Created by Abdoulaye Aliou SALL on 12/03/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = UserViewModel()
    
    var body: some View {
        UserView(viewModel:viewModel )
//        Text("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
