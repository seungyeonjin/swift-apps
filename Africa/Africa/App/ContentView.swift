import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - PROPERTIES
        
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // MARK: - BODY
        NavigationView {
            List {
               CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)

                    }
                }
            } //: List
            .navigationBarTitle("Africa", displayMode:  .large)
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
