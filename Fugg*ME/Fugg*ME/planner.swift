import SwiftUI

struct planner : View {
    @State var tasks = ["Workout","Office","Drink water", "Break", "Work", "PowerNap", "Work", "Sleep"]
    var body: some View {
            
            VStack{
                VStack{
                    HStack{
                        Text("Events")
                            .fontWeight(.light)
                            .font(.system(size: 29))
                        
                        Image(systemName: "gym.bag")
                            .font(.system(size: 23))
                            .fontWeight(.light)
                }
                    VStack{
                        HStack{
                            Text("Tasks")
                                .fontWeight(.medium)
                                .font(.system(size: 25))
                            Spacer()
                        }.padding()
                };Spacer()
                    VStack{
                            List(tasks, id: \.self) { task in
                                Text(task)
                                    .bold()
                            }.listStyle(InsetListStyle())
                    }
            }
        }
    }
}


struct plannerView : PreviewProvider {
    static var previews: some View{
        planner()
    }
}
