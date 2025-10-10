import SwiftUI
class ShoppingCart{
    private(set) var items: [CartItem] = []
    var discountCode: String?
    
    init(items: [CartItem] = [], discountCode: String?){
        self.items = items
        self.discountCode = discountCode
    }
    
    func addItem(product: Product, quantity: Int = 1){
        for i in 0..<items.count{
            if items[i].product.id == product.id{
                items[i].quantity += quantity
                return
            }
            let newItem = CartItem(product: product, quantity: quantity)
            items.append(newItem)
        }
    }
    
    func removeItem(productId: Int){   // <------- здесь не то стоить
        for i in 0..<items.count{
            if productId == i{
                items.remove(at: i)
            }
            else{
                print("Item not found")
            }
        }
    }
    
    func updateItemQuantity(productId: String, quantity: Int){   // <--------- здесь тоже не то стоить
        for i in 0..<items.count{
            if items[i].product.id == productId{
                if quantity >= 0{
                    items[i].quantity = quantity
                }
                else{
                    items.remove(at: i)
                }
            }
        }
        print("Item not found")
    }
    
    func clearCart(){
        items.removeAll()
    }
    
    var subtotal: Double {
        var total = 0.0
        for item in items{
            total = total + Double(item.product.price) * Double(item.quantity)
        }
        return total
    }
    
    var discountAmount: Double{
        if let code = discountCode, code.hasPrefix("SAVE"){
            let numberPart = code.dropFirst(4)
            if let present = Double(numberPart){
                for item in items {
                    return Double(item.product.price) * Double(item.quantity) * present / 100
                }
            }
        }
        return 0
    }
    
    var total: Double{
        subtotal - discountAmount
    }
    
    var itemCount: Int{
        var count = 0
        for item in items{
            count = count + item.quantity
        }
        return count
    }
    
    var isEmpty: Bool{
        if items.isEmpty{
            return true
        }
        return false
    }
}
