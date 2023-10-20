import SwiftUI

struct RetrieveView: View {
    @State var number2 = "Not Loaded Yet"
    
    @State var array: [Double] = []
    
    @State var name = ""
    @State var age = ""
    @State var phoneNumber = ""
    
    @AppStorage("url1") var url1: URL = URL(string: "www.apple.com")!
    @AppStorage("url2") var url2: URL = URL(string: "www.carmax.com")!
    
    //MARK: MVP - Part III
    
    @AppStorage("number1") var number1: Int = 0
    
    
    
    //MARK: Stretch #1 - Part III
    
 
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Group {
                TitleView(name: "MVP")
                HStack {
                    Text("Number1: ")
                    //TODO: MVP
                    Text("\(number1)")
                }
                HStack {
                    Text("Number2: ")
                    Text("\(number2)")
                }
            }
            
            Group {
                TitleView(name: "Stretch #1")
                //TODO: Stretch #1
                            Link("Load URL #1", destination: url1)
                Link("Load URL #2", destination: url2)
            }
            
            Group {
                TitleView(name: "Stretch #2")
                ForEach(array, id: \.self) { value in
                    Text("\(value) ")
                }
            }
            
            Group {
                TitleView(name: "Stretch #3")
                HStack {
                    Text("Name: ")
                    Text(name)
                }
                HStack {
                    Text("Age: ")
                    Text(age)
                }
                HStack {
                    Text("Phone Number: ")
                    Text(phoneNumber)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .font(.title)
        .onAppear(perform: {
            //MARK: MVP - Part IV
            
            number2 = "\(UserDefaults.standard.integer(forKey: "Number2"))"
          
            
            
            //MARK: Stretch #1 - Part IV
            
        
            
            
            
            //MARK: Stretch #2 - Part II
            
            if let retrievedArray = UserDefaults.standard.array(forKey: "SavedNumbersArray") as? [Double] {
               
                array = retrievedArray
            } else {
                
                print("Failed to retrieve the array from UserDefaults.")
            }
            
            
            
            //MARK: Stretch #3 - Part II
            
            
                guard let savedContact = UserDefaults.standard.data(forKey: "Contacter") else {
                    print("No data found")
                    return
                }
                
                do {
                    let contact = try JSONDecoder().decode(Contact.self, from: savedContact)
                    self.name = contact.name
                    self.age = String(contact.age)
                    self.phoneNumber = contact.phoneNumber
                } catch {
                    print("Failed to decode: \(error)")
                }
            
            
            
            
        })
    }
}


