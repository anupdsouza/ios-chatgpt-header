//
//  ContentView.swift
//  ChatGPTHeaderAnimation
//
//  Created by Anup D'Souza on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            PickerHeaderView()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundStyle(.white)
        .background(.black)
    }
}

#Preview {
    ContentView()
}
