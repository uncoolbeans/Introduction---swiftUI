//
//  ContentView.swift
//  Introduction in swiftUI
//
//  Created by MMS on 23/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var rotation : Angle = .zero
    @State var turn = false
    @State private var hasTimeElapsed = false
    @State private var hasTimeElapsed2 = false
    @State private var hasTimeElapsed3 = false
    @State var displaySheet = false
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea(.all)
            VStack{
                Text("Hello!")
                .padding()
                .foregroundColor(Color.black)
                    .onAppear(perform: {
                        delayText()
                    })
                withAnimation{
                    Text(hasTimeElapsed ?  "I am Viet Truong.":" ").animation(.easeInOut)
                        .padding()
                        .onAppear(perform: {
                            delayText2()
                        })
                }
                Text(hasTimeElapsed2 ? "I am in Secondary 3 and I am from Clementi Town Secondary School." : " ")
                    .multilineTextAlignment(.center)
                    .padding()
                    .animation(.easeInOut)
                    .onAppear(perform: {
                        delayText3()
                    })
                Text(hasTimeElapsed3 ? "Here is my social media channels! " : " ")
                    .padding()
                    .animation(.easeInOut)
                    .onAppear(perform: {
                        sheetDelay()
                    })
                    
                
            }
        }
        .sheet(isPresented: $displaySheet){
            InfoSheet()
        }
    }

    private func delayText() {
            // Delay of 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                hasTimeElapsed = true
            }
        }
    private func delayText2() {
            // Delay of 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                hasTimeElapsed2 = true
            }
    }
    private func delayText3() {
            // Delay of 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                hasTimeElapsed3 = true
            }
    }
    private func sheetDelay() {
            // Delay of 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 11) {
                displaySheet = true
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
