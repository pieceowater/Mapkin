//
//  LocationsListView.swift
//  Mapkin
//
//  Created by yury mid on 14.08.2022.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach( vm.locations) { location in
                Button  {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle() )
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    private func listRowView(location: Location) -> some View{
        HStack{
            if let imageName = location.imageNames.first {
                VStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .cornerRadius(50)
                }
                .frame(width: 45, height: 45)
                .background(Color.accentColor)
                .padding(0.1)
                .cornerRadius(150)
                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
