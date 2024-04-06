import Foundation


struct Location {
    let x: Int
    let y: Int
}

// Use the same storeRange from the pizza example as well, 2.5 (change if you like of course)

let storeRange = 2.5

// Create 2 store locations (Location, as we did with the pizza example)

let firstStore = Location(x: 3, y: 3)
let secondStore = Location(x: 8, y: 8)


// Create a Customer struct that includes the following properties:
// - name (String, full name)
// - email (String, don't worry about validation for now)
// - phone number (String, don't worry about validation for now)
// - acceptedNewsletter (Bool)
// - location (Location, x and y coordinates, just like the pizza example)


struct Customer {
    var name: String
    var email: String
    var phoneNumber: String
    var acceptedNewsletter: Bool
    var location: Location
}
// Create an array of customers (Customer, at least 10)

var customers: [Customer] = [
    Customer(name: "Jane Doe",
             email: "jdoe@gmail.com",
             phoneNumber: "11111111",
             acceptedNewsletter: true,
             location: Location(x: 12, y: 67)),
    Customer(name: "Carolyn Bertozzi",
             email: "cbertozzi@gmail.com",
             phoneNumber: "22222222",
             acceptedNewsletter: true,
             location: Location(x: 5, y: 2)),
    Customer(name: "Benjamin List",
             email: "blist@gmail.com",
             phoneNumber: "33333333",
             acceptedNewsletter: false,
             location: Location(x: 9, y: 9)),
    Customer(name: "George Smith",
             email: "gsmith@gmail.com",
             phoneNumber: "22223332",
             acceptedNewsletter: true,
             location: Location(x: 5, y: 2)),
    Customer(name: "Joachim Frank",
             email: "jfrank@gmail.com",
             phoneNumber: "44444444",
             acceptedNewsletter: true,
             location: Location(x: 13, y: 12)),
    Customer(name: "Aziz Sancar",
             email: "asancar@gmail.com",
             phoneNumber: "55555555",
             acceptedNewsletter: false,
             location: Location(x: 4, y: 4)),
    Customer(name: "Eric Betzig",
             email: "ebetzig@gmail.com",
             phoneNumber: "66666666",
             acceptedNewsletter: true,
             location: Location(x: 10, y: 2)),
    Customer(name: "JAkira Suzuki",
             email: "asuzuki@gmail.com",
             phoneNumber: "77777777",
             acceptedNewsletter: false,
             location: Location(x: 1, y: 1)),
    Customer(name: "Gerhard Ertl",
             email: "gertl@gmail.com",
             phoneNumber: "88888888",
             acceptedNewsletter: true,
             location: Location(x: 15, y: 20)),
    Customer(name: "Ada Yonath",
             email: "ayonath@gmail.com",
             phoneNumber: "99999999",
             acceptedNewsletter: false,
             location: Location(x: 50, y: 18))]

// Write a function that takes in a single store location and the collection of customers and prints the email addresses of customers that are within the storeRange (you can use the distance formula from the pizza example)
func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}


func isInStoreRange(location: Location, storeLocation: Location, storeRange: Double) -> Bool {
    let deliveryDistance = distance(from: location, to: storeLocation)
    return deliveryDistance < storeRange
}


func customersWithinRange(storeLocation: Location, storeRange: Double, customers: [Customer]) {
    for customer in customers {
        if isInStoreRange(location: customer.location, storeLocation: storeLocation, storeRange: storeRange) {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}



// Print email addresses of customers within range of first store

print("Customers within range of firstStore:")
customersWithinRange(storeLocation: firstStore, storeRange: storeRange, customers: customers)

// Print email addresses of customers within range of second store

print("\nCustomers within range of secondStore:")
customersWithinRange(storeLocation: secondStore, storeRange: storeRange, customers: customers)
