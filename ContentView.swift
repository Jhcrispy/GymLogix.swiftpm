import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationLink(Image("Gym Logix-2"), destination: GymView())
            Image("Gym Logix-2")
        }
        VStack{
            Shape
        }
        Spacer()
        HStack{
            Text("Notes")
            Text("Tips")
            Text("Progress")
            
        }
    }
}
