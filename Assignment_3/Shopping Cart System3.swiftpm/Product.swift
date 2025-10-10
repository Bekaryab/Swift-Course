import SwiftUI

struct Product{
    var id: String
        var name: String
        var price: Double
        var category: Category
        var description: String
    
    enum Category{
        case electronics
        case clothing
        case books
    }
    
    var displayPrice: String{
        return String(format: "%.2f ₸", price)
    }
    init?(id: String, name: String, price: Double, category: Category, description: String){
        guard price >= 0 else{
            print("Price must be non-negative")
            return nil
        }
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
    
}
