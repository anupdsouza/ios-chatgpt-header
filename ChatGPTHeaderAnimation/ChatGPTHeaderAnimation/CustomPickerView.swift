//
//  CustomPickerView.swift
//  ChatGPTHeaderAnimation
//
//  Created by Anup D'Souza on 23/11/23.
//

import SwiftUI

struct CustomPickerView: View {
    @Binding var options: [GPTEngine]
    @Binding var selection: String
    var body: some View {
        List {
            Section {
                ForEach(options) { item in
                    HStack {
                        Text("GPT-" + item.id)
                        Spacer()
                        Image(systemName: item.image)
                    }
                }
            }
        }
        .frame(width: 250)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    CustomPickerView(options: .constant([]), selection: .constant("4"))
}
