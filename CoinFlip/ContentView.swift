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
    @State var heads = "Heads"
    @State var tails = "Tails"

    
    var body: some View {
        Group {
            VStack {
                Spacer()
                HStack {
                    if headsCounter == 10 {
                        Text("\(heads)")
                    } else if tailsCounter == 10 {
                        Text("\(tails)")
                    }
                    else {
                        Text("\(heads): \(headsCounter)")
                        Text("\(tails): \(tailsCounter)")
                    }
                        
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                
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
                Button(headsCounter == 10 || tailsCounter == 10 ? "Reset" : "Flip") {
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
                    
                    if headsCounter == 10 {
                        heads = "Heads won!"
                        tails = ""
                    } else if tailsCounter == 10 {
                        tails = "Tails won!"
                        heads = ""
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
        }.frame(maxWidth: .infinity)
            .background(.yellow)
       // .ignoresSafeArea()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
