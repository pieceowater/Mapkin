//
//  LocationDetailView.swift
//  Mapkin
//
//  Created by yury mid on 19.08.2022.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack{
                imageSection
                    .shadow(color: Color.blue.opacity(0.3), radius: 20, x: 0, y: 10)
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationDetailView(location: LocationsDataService.locations[7])
                .environmentObject(LocationsViewModel())
        }
    }
}

extension LocationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) { imageName in
                Image (imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.title)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
            
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.body)
                .foregroundColor(.secondary)
            if let url = URL(string: location.link) {
                Link("Read more on source", destination: url)
                    .font(.headline)
                    .tint(.blue)
                
            }
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))), annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(color: Color.black.opacity(0.3), radius: 10)
            }
        }
        .allowsHitTesting(false)
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
    }

    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thinMaterial)
                .cornerRadius(10)
                .shadow(radius: 10, x: 0, y: 0)
                .padding()
        }

    }
    
    
}
