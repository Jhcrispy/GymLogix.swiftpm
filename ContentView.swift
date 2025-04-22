import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
          
        }
        VStack{
            
         Image("Gym Logix-2")
                .resizable()
                .frame(width: 75,height: 75)
            
        }
        .frame(maxWidth: .infinity)
        .background(LinearGradient(colors: [.gray,.black], startPoint: .leading, endPoint: .top)).ignoresSafeArea()
        VStack{
            
        }
       
        Spacer()
        HStack{
            Text("Notes")
            Text("Tips")
            Text("Progress")
            
        }
        .font(.custom("Rustic", size:45))
        .bold()
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
        .background(LinearGradient(colors: [.gray,.black], startPoint: .leading, endPoint: .top)).ignoresSafeArea()
    }
}
