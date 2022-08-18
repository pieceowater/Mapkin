//
//  LocationPreviewView.swift
//  Mapkin
//
//  Created by yury mid on 14.08.2022.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            VStack(spacing: 8){
                learnMoreButton
                nextButton
            }
        }
        .padding(15)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 50)
        )
        .cornerRadius(10)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LocationPreviewView(location: LocationsDataService.locations.first!)
        }
        .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack{
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
            }
        }
        .padding(6)
        .background(Color.accentColor)
        .cornerRadius(100)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
        
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title3)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            vm.sheetLocation = location
        } label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 25)
            Image(systemName: "info.circle")
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 25)
            Image(systemName: "arrow.right")
        }
        .buttonStyle(.bordered)
    }
    
}

