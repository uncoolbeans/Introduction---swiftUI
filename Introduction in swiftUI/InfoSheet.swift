//
//  InfoSheet.swift
//  Introduction in swiftUI
//
//  Created by MMS on 23/6/21.
//

import Foundation
import SwiftUI

struct InfoSheet: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            VStack{
                Text("My discord: shrekinator#9302")
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .font(.headline)
                
                Button(" </> Go to my GitHubz !!1!1"){
                openURL(URL(string: "https://github.com/uncoolbeans")!)
                }   .padding()
                    .background(Color.black)
                    .shadow(color: .purple, radius: 3, x: 0.5, y: 1)
                    .cornerRadius(10)
                    .font(.headline)
                Button(action: {
                                    openURL(URL(string: "https://instagram.com/billy_bhop")!)
                                }, label: {
                                    HStack {
                                        Image(systemName: "camera.fill")
                                            .foregroundColor(.white)
                                            .opacity(0.8)
                                        Text("instagram!!!")
                                            .font(.system(size: 20, weight: .regular, design: .serif))
                                            .foregroundColor(.white)
                                            .shadow(color: .purple, radius: 3, x: 0.5, y: 1)
                                    }
                                    .padding()
                                    .background(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]),
                                                               startPoint: .bottomLeading,
                                                               endPoint: .topTrailing)
                                                    .shadow(color: .purple, radius: 3, x: 0.5, y: 1))
                                })
                }




            
        }
    }
}
struct InfoSheet_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheet()
    }
}
