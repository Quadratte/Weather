import SwiftUI

struct ContentView: View {
  var body: some View {
    
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
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
        
          .padding(.bottom, 80)
  
        HStack(spacing: 20){
          weatherDayView(dayOfWeek: "Mon", imageName: "cloud.rain.fill", temperature: 22)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.bolt.rain.fill", temperature: 18)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.rain.fill", temperature: 21)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 22)
          weatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 26)
         
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

struct weatherDayView: View {
  
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack {
      
      Text(dayOfWeek)
        .font(.system(size: 16, weight: .medium, design: .default))
        .foregroundColor(.white)
      
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 40, height: 40, alignment: .center)
      
      Text("\(temperature)°")
        .font(.system(size: 28, weight: .medium, design: .default))
        .foregroundColor(.white)
      
    }
  }
}
