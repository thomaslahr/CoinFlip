//
//  CoinTails.swift
//  CoinFlip
//
//  Created by Thomas Lahr on 29/09/2022.
//

import Foundation




import SwiftUI

struct CoinTails: View {
    
    var body: some View {
        ZStack {
            Circle().foregroundColor(.orange)
                .frame(width: 300, height: 300)
                .shadow(color: .black, radius: 10.0)
            Image(systemName: "building.columns.circle")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.white)
        }
    }
}
