//
//  LocationsDataService.swift
//  Mapkin
//
//  Created by yury mid on 14.08.2022.
//


import Foundation
import MapKit

class LocationsDataService {

    static let locations: [Location] = [
        Location(
            name: "Lake Sairan",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.243802, longitude: 76.864355),
            description: "Lake Sairan was built in 1971. The reservoir was created on the site of a former quarry for the extraction of sand and gravel materials with the help of a dam located under Tole Bi Street.",
            imageNames: [
                "image-placeholder-1",
            ],
            link: "https://2gis.kz/almaty/geo/9430098914574390/76.864355%2C43.243802?m=76.870558%2C43.242392%2F15.83"),
        Location(
            name: "Koktyube, TV tower",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.228644, longitude: 76.976098),
            description: "The tower is one of the most earthquake-resistant and tallest structures in the world. The 2nd tallest building in Kazakhstan and the 32nd in the world (at the time of commissioning - the 4th in the world).",
            imageNames: [
                "image-placeholder-1",
            ],
            link: "https://2gis.kz/almaty/geo/9430047375109017/76.976098%2C43.228644?m=76.91315%2C43.241466%2F12.96"),
        Location(
            name: "Medeu",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.157544, longitude: 77.059004),
            description: "Medeu is a high-altitude sports complex located in the high—mountain tract of Medeu at an altitude of 1,691 meters above sea level, near the \"southern capital\" of Kazakhstan - Alma-Ata, just below the mountain resort \"Shymkent\".",
            imageNames: [
                "image-placeholder-1",
            ],
            link: "https://2gis.kz/almaty/firm/9429940000797844/77.059004%2C43.157544?m=77.060755%2C43.152642%2F14.58"),
        Location(
            name: "Mount Mokhnatka",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.149324, longitude: 77.050493),
            description: "Height - 2280 m . Named after your ex.",
            imageNames: [
                "image-placeholder-1",
            ],
            link: "https://2gis.kz/almaty/geo/70030076201538071/77.050493%2C43.149324?m=77.060755%2C43.152642%2F14.58"),
        Location(
            name: "Monument to Viktor Tsoi",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.249919, longitude: 76.949094),
            description: "Viktor Robertovich Tsoi (1962-1990) was a Soviet rock musician, songwriter and artist. Founder and leader of the rock band \"Cinema\", in which he sang, played guitar, wrote music and poetry. Starred in several films.",
            imageNames: [
                "image-placeholder-1",
            ],
            link: "https://2gis.kz/almaty/geo/70030076164070071?m=76.949094%2C43.249919%2F16"),
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
    ]

}
