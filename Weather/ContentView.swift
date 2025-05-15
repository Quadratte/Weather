import SwiftUI

struct ContentView: View {
  var body: some View {
    
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea(.all)
      
      VStack {
        Text("Cupertino CA")
          .font(.system(size: 36, weight: .medium, design: .default))
          .foregroundColor(.white)
        Image(systemName: "cloud.sun.fill")
          .renderingMode(.original)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 180, height: 180)
        Text("32°")
          .font(.system(size: 70, weight: .medium))
          .foregroundColor(.white)
          
        HStack {
          VStack {
            
            Text("Mon")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundColor(.white)
            
            Image(systemName: "cloud.rain.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 30, height: 30, alignment: .center)
            
            Text("22°")
              .font(.system(size: 25, weight: .medium, design: .default))
              .foregroundColor(.white)
            
          }
          VStack {
            
            Text("Mon")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundColor(.white)
            
            Image(systemName: "cloud.rain.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 30, height: 30, alignment: .center)
            
            Text("22°")
              .font(.system(size: 25, weight: .medium, design: .default))
              .foregroundColor(.white)
            
          }

        }
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
