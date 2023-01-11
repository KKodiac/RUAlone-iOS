//
//  FeedDetailView.swift
//  Techeer-RUAlone
//
//  Created by Sean Hong on 2022/12/28.
//

import SwiftUI
import MapKit

struct FeedDetailView: View {
    @ObservedObject var viewModel: FeedDetailViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                MapView(viewModel: viewModel)
                    .edgesIgnoringSafeArea(.all)
                    .sheet(isPresented: $viewModel.isPresented) {
                        FeedDetailModalView(details: viewModel.details)
                            .presentationDetents([.medium, .large])
                    }
            }
            .toolbar(.hidden, for: .tabBar)
        }
    }
}
