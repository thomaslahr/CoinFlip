//
//  ContentView.swift
//  CoinFlip
//
//  Created by Thomas Lahr on 29/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isHeads = true
    @State var headsCounter = 0
    @State var tailsCounter = 0
    @State var headsDegrees = 0.0
    @State var tailsDegrees = 0.0
    
    var body: some View {
        Group {
            VStack {
                Spacer()
                HStack {
                    Text("Heads: \(headsCounter)")
                    Text("Tails: \(tailsCounter)")
                }.font(.largeTitle)
                
                Spacer()
                Group {
                    if isHeads {
                        CoinHeads().rotation3DEffect(.degrees(headsDegrees), axis: (x: 0, y: 1, z: 0))
                        
                    } else {
                        CoinTails().rotation3DEffect(.degrees(tailsDegrees), axis: (x: 0, y: 1, z: 0))
                    }
                }
                .padding()
                Spacer()
                Button("Flip") {
                    isHeads = Bool.random()
                    // isHeads.toggle()
                    headsDegrees = -450
                    tailsDegrees = -450
                    if isHeads {
                        
                        withAnimation(
                            .linear(duration: 0.3)) {
                                headsDegrees = 0
                                tailsDegrees = -450
                            }
                        headsCounter += 1
                    } else {
                        withAnimation(
                            .linear(duration: 0.3)) {
                                tailsDegrees = 0
                                headsDegrees = -450
                            }
                        
                        tailsCounter += 1
                    }
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
                .background(.orange)
                .foregroundColor(.white)
                .font(.largeTitle)
                .clipShape(Capsule())
                Spacer()
                
            }
        }
       // .ignoresSafeArea()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
