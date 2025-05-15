import SwiftUI

struct ContentView: View {
  
  @State private var isNight = false
  
  var body: some View {
    
    ZStack {
      BackgroundView(isNight: $isNight)
      
      VStack {
        CityTextView(cityName: "Cupertino, CA")
        MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.rain.fill", temperature: 26)
  
        HStack(spacing: 20){
          weatherDayView(dayOfWeek: "Mon", imageName: "cloud.rain.fill", temperature: 22)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.bolt.rain.fill", temperature: 18)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.rain.fill", temperature: 21)
          weatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 22)
          weatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 26)
         
        }
        Spacer()
        
        Button {
          isNight.toggle()
        } label: {
          WeatherButton(title: "Change Day Time",
                        textColor: .blue,
                        backgroundColor: .white)
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

struct BackgroundView: View {
  
  @Binding var isNight: Bool
  
  var body: some View {
    
    LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                      isNight ? .gray : Color("lightBlue")]),
                   startPoint: .topLeading,
                   endPoint: .bottomTrailing)
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


