//
//  PickerHeaderView.swift
//  ChatGPTHeaderAnimation
//
//  Created by Anup D'Souza on 23/11/23.
//

import SwiftUI

struct PickerHeaderView: View {
    private let gptOptions: [GPTEngine] = [
        .init(id: "4", image: "scribble"),
        .init(id: "3.5", image: "paperplane.fill")
    ]
    @State private var selectedGptOption = "4"
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName:"line.3.horizontal")
                Spacer()
                ZStack {
                    HStack {
                        Text("ChatGPT " + selectedGptOption)
                        Image(systemName: "chevron.right")
                    }
                    Picker("", selection: $selectedGptOption) {
                        ForEach(gptOptions) { item in
                            HStack {
                                Text("GPT-" + item.id)
                                Image(systemName: item.image)
                            }
                        }
                    }
                    .opacity(0.025)
                }
                Spacer()
                Image(systemName:"square.and.pencil")
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    PickerHeaderView()
}
