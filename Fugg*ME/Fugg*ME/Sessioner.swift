import SwiftUI

struct Sessioner :View {

    @State private var minute = 0
    @State private var hour = 0
    @State private var Second = 0
    @State private var timer : Timer?
    
    let hourOptions = (0...23)
    let SecondOptions = (0...59)
    let MinuteOptions = (0...59)
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            ZStack{
                
                VStack{
                    VStack{
                        Text("Timer")
                            .foregroundStyle(.white)
                            .font(.system(size: 22))
                    }.padding()
                    ;Spacer()
                    HStack{
                        Picker("Hours", selection: $hour) {
                            ForEach(hourOptions, id: \.self){ hour in
                                Text("\(hour)")
                                    .foregroundStyle(.white)
                                
                            }
                        }.pickerStyle(WheelPickerStyle())

                    }
                }
                
            }
        }
    }
}


struct PreviewS : PreviewProvider{
    static var previews: some View{
        Sessioner()
    }
}
