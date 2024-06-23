//
//  BackgroundGradientView.swift
//  SwiftUIDay4
//
//  Created by DY S on 6/22/24.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        Image("img_main_background")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        
        LinearGradient(gradient: .init(colors: [
                .black.opacity(0.3),
                .black.opacity(0.3)]),
                       startPoint: .top,
                       endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}
