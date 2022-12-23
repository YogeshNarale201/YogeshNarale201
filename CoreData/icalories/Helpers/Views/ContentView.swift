//
//  ContentView.swift
//  icalories
//
//  Created by Mac on 06/03/34.
//

import SwiftUI
import CoreData


struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var food:FetchedResults<Food>
    
    @State private var showingAddView = false
    
    
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Text("\(Int(totalCaloriesToday())) kcal (Today)")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                List{
                    ForEach(food) { food in
                        NavigationLink(destination: EditFoodView(food: food)){
                            HStack{
                                VStack(alignment: .leading, spacing: 6){
                                    Text(food.name!)
                                        .bold()
                                    
                                    Text("\(Int(food.calories))") + Text(" calories").foregroundColor(.red)
                                }
                                Spacer()
                                Text(calcTimeSince(date: food.date!))
                                    .foregroundColor(.gray)
                                    .italic()
                                
                            }
                        }
                    }
                    .onDelete(perform: deleteFood)
                }
                .listStyle(.plain)
                
            }
            .navigationTitle("calories")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showingAddView.toggle()
                    }
                label: {
                    Label("Add Food",systemImage: "plus.circle")
                   }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
            }
            .sheet(isPresented: $showingAddView){
                AddFoodView()
            }
        }
        .navigationViewStyle(.stack)
    }
    private func deleteFood(offsets: IndexSet){
        withAnimation{
            offsets.map { food[$0] }.forEach(managedObjContext.delete)
            
            DataController().save(context: managedObjContext)
        }
    }
    
    private func totalCaloriesToday() -> Double {
        
        var caloriesToday: Double = 0
        for iteam in food{
            if Calendar.current.isDateInToday(iteam.date!){
                caloriesToday += iteam.calories
            }
        }
        return caloriesToday
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
