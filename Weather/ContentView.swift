import SwiftUI

struct ContentView: View {
  var body: some View {
    
    ZStack {
      BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
      
      VStack {
        CityTextView(cityName: "Cupertino, CA")
        MainWeatherStatusView(imageName: "cloud.rain.fill", temperature: 26)
  
        HStack(spacing: 20){
          weatherDayView(dayOfWeek: "Mon", imageName: "cloud.rain.fill", temperature: 22)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.bolt.rain.fill", temperature: 18)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.rain.fill", temperature: 21)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 22)
          weatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 26)
         
        }
        Spacer()
        
        WeatherButton(title: "Change day time")
        
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

struct BackgroundView: View {
  var topColor: Color
  var bottomColor: Color
  
  var body: some View {
    LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
    .ignoresSafeArea(.all)
  }
}

struct CityTextView: View {
  
  var cityName: String
  
  var body: some View {
    Text(cityName)
      .font(.system(size: 36, weight: .medium, design: .default))
      .foregroundColor(.white)
  }
}

struct MainWeatherStatusView: View {
  
  var imageName: String
  var temperature: Int
  
  var body: some View {
    Image(systemName: imageName)
      .renderingMode(.original)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: 180, height: 180)
    Text("\(temperature)°")
      .font(.system(size: 70, weight: .medium))
      .foregroundColor(.white)
    
      .padding(.bottom, 80)
  }
}

struct WeatherButton: View {
  
  var title: String
  
  var body: some View {
      Text(title)
        .frame(width: 280, height: 50)
        .background(Color.white)
        .foregroundColor(.blue)
        .font(.system(size: 20,weight: .bold, design: .default))
        .cornerRadius(10)
    }
}
