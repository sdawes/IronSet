//
//  IntroScreen.swift
//  IronSet
//
//  Created by Stephen Dawes on 06/09/2024.
//

import SwiftUI

struct IntroScreen: View {
    /// Visibiilty Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = false
    var body: some View {
        VStack(spacing: 15) {
            Text("What's new in \nIron Set")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            /// Points View
            VStack(alignment: .leading, spacing: 25, content: {
                PointView(symbol: "chart.bar.fill", title: "Charts", subTitle: "View your progress using great visuals and charts")
                
                PointView(symbol: "figure.stand", title: "Categories", subTitle: "Filter and sort by categories")
                
                PointView(symbol: "magnifyingglass", title: "Advance Filters", subTitle: "Find your exercises using advance search and filtering")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 15)
            
            Spacer(minLength: 10)
            
            Button(action: {}, label: {
                Text("Continue")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)

                    
            })
        }
        .padding(15)
    }
    
    /// Point View
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            })
        }
    }
}

#Preview {
    IntroScreen()
}
