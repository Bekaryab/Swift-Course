import SwiftUI

struct Address{
    var street: String
    var city: String
    var zipCode: String
    var country: String
    
    var formattedAddress: String{
        return "\(street), \(city), \(zipCode), \(country)"
    }
}
