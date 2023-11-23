//
//  MainView.swift
//  ChatGPTHeaderAnimation
//
//  Created by Anup D'Souza on 23/11/23.
//

import SwiftUI

struct GPTEngine: Hashable, Identifiable {
    let id: String
    let image: String
}

struct MainView: View {
    @State var selection = "4"
    @State var showPicker = false
    @State var gptOptions: [GPTEngine] = [
            .init(id: "4", image: "scribble"),
            .init(id: "3.5", image: "paperplane.fill")
        ]
    
    var body: some View {
        VStack(spacing: 0) {
            CustomHeaderView(selection: $selection, showPicker: $showPicker)
            ZStack {
                CustomPickerView(options: $gptOptions, selection: $selection)
                    .foregroundStyle(.black)
                    .opacity(showPicker ? 1.0 : 0)
                    .scaleEffect(showPicker ? 1.0 : 0, anchor: .top)
                    .animation(.spring(duration: 0.3, bounce: 0.3), value: showPicker)
                Text("Welcome to ChatGPT")
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundStyle(.white)
        .background(.black)
    }
}

struct CustomHeaderView: View {
    @Binding var selection: String
    @Binding var showPicker: Bool
    
    var body: some View {
        HStack {
            Image(systemName:"line.3.horizontal")
            Spacer()
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    showPicker.toggle()
                }
            }, label: {
                HStack {
                    Text("ChatGPT " + selection)
                    Image(systemName: "chevron.right")
                }
                .opacity(showPicker ? 0.5 : 1)
            })
            Spacer()
            Image(systemName:"square.and.pencil")
        }
        .foregroundStyle(.white)
        .padding(.horizontal, 20)
    }
}

#Preview {
    MainView()
}
