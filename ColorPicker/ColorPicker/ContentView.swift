import SwiftUI
import Playgrounds



struct ContentView: View {
    //vars for toggle switch
    @State var redIsOn = true
    @State var blueIsOn = true
    @State var greenIsOn = true
    
    //vars for sliders
    @State var redAmount = 1.0
    @State var greenAmount = 1.0
    @State var blueAmount = 1.0
    

    var body: some View {
        VStack (spacing: 40){
            Rectangle()
                .foregroundStyle(Color(red: redIsOn ? redAmount: 0, green: greenIsOn ? greenAmount: 0, blue: blueIsOn ? blueAmount: 0))
                .frame(height: 200)
                .border(Color.black, width: 3)
                .shadow(radius: 10)
            HStack{
                Toggle(isOn: $redIsOn, label:{Text("Turn on red")}).labelsHidden().tint(.red)
                Slider(value: $redAmount, in: 0...1).tint(redIsOn ? .red: .gray)
            }
            HStack {
                Toggle(isOn: $greenIsOn, label:{Text("Turn on green")}).labelsHidden().tint(.green)
                Slider(value: $greenAmount, in: 0...1).tint(greenIsOn ? .green: .gray)
            }
            HStack {
                Toggle(isOn: $blueIsOn, label:{Text("Turn on blue")}).labelsHidden().tint(.blue)
                Slider(value: $blueAmount, in: 0...1).tint(blueIsOn ? .blue: .gray)
            }
            Spacer()
            Button(action: {
                redAmount = 1.0
                greenAmount = 1.0
                blueAmount = 1.0
                redIsOn = true
                greenIsOn = true
                blueIsOn = true
            }, label: {
                Text("Reset")
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
