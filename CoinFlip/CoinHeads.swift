//
//  CoinHeads.swift
//  CoinFlip
//
//  Created by Thomas Lahr on 29/09/2022.
//

import SwiftUI

struct CoinHeads: View {
    
    var body: some View {
        ZStack {
            Circle().foregroundColor(.orange)
                .frame(width: 300, height: 300)
                .shadow(color: .black, radius: 10.0)
            Image(systemName: "brain.head.profile")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.white)
        }
    }
}
