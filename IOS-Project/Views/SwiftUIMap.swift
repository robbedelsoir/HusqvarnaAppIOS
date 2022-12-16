import SwiftUI
import MapKit
struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}

struct MapView: View {
    @State var coordinateRegion: MKCoordinateRegion = {
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 50.80580148204638
        newRegion.center.longitude = 3.2842106137743308
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2
        return newRegion
    }()
    
    
    var annotationItems: [MyAnnotationItem] = [
        //castel motors
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 50.690042667142485, longitude: 3.1734146440963777)),
        //leon saggaert
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 50.94343953661561, longitude: 3.2940420541585396)),
        //R4 motos
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 51.09466176530236, longitude: 3.7763867274168774)),
        //garden tools
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude:  50.78567261592435, longitude: 3.2141870141679365)),
        //desmet roland
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude:  50.87668047058957, longitude: 3.442740743366995)),
        //r trac
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude:  50.853492889583116, longitude: 3.7401561581010645))
    ]
    var body: some View {
        VStack {
            Map(coordinateRegion: $coordinateRegion,
                annotationItems: annotationItems) {item in
                MapMarker(coordinate: item.coordinate)
            }
                .onTapGesture {
                            
                } }
        .ignoresSafeArea()
    }
        
        
}

struct Previews_SwiftUIMap_Previews: PreviewProvider {
    static var previews: some View {
    MapView()
        }
    }

