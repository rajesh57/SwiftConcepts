import UIKit

/* Tuples */

/*

let employee = (103, "Deepak")

employee.0
employee.1
*/

// Tuples parameter with names

/*

let employee = (id:103, name:"Deepak")

employee.id
employee.name
*/

// Tuples parameter with names and data type

/*
let employee:(id:Int, name:String) = (102, "Deepak")

employee.id
employee.name
*/


// Tuples with Switch 

/*

let employee:(id:Int, name:String) = (102, "Deepak")

switch (employee) {
case (103...105,_):
    print("developer")
case (106...108,_):
    print("tester")
case (_,"Deepak"):
    print("CEO")
default:
    print("Contractor")
}
*/

/* Enum */

/*

enum Month: String {
    case January = "January", February = "February", March = "March", April = "April", May = "May", June = "June", July = "July", August = "August", September = "September", October = "October", November = "November", December = "December"
}

let currentMonth = Month.May

//let currentMonth:Month = .May

currentMonth.rawValue
*/


// enum with associated values

/*
enum Month {
    case January(String), February(String), March(String), April(String), May(String), June(String), July(String), August(String), September(String), October(String), November(String), December(String)
}

let currentMonth: Month = .May("Summer Vacation")

switch currentMonth {
case .May(let message):
        print(message)
default:
    print("No Values")
}
*/

// enum with member function

/*
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
    
    func monthsLeftForYearEnd() -> Int {
       return Month.December.rawValue - self.rawValue
    }
}

let month: Month = .May

month.monthsLeftForYearEnd()
*/

// enum with init

/*
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
    
    init() {
        self = .July
    }
    
    func monthsLeftForYearEnd() -> Int {
        return Month.December.rawValue - self.rawValue
    }
}

let month = Month()

month.monthsLeftForYearEnd()
*/


// Protocols

/*
protocol LivingThings {
    func eat() -> String
}

class Animal: LivingThings {
    func eat() -> String {
        return "Animal Food"
    }
}

class Human: LivingThings {
    func eat() -> String {
        return "Human Food"
    }
}

let john = Human()

john.eat()

let cat = Animal()

cat.eat()
*/


// Protocol with Optional methods

/*

protocol LivingThings {
    func eat() -> String
}


@objc protocol Speakable {
    optional func speak() -> String
}

class Human: LivingThings, Speakable {

    func eat() -> String {
        return "Human Food"
    }
    
    @objc func speak() -> String {
        return "Human can Speak"
    }

}

let john = Human()

john.eat()

john.speak()

*/


// Same Protocol with Optional methods -

/*

@objc protocol LivingThings {
    var eyeColour: UIColor {get set}
    func eat() -> String
    optional func speak() -> String
}

class Human: LivingThings {
     @objc var eyeColour: UIColor = UIColor.redColor()
@objc func eat() -> String {
    return "Human Food"
}

@objc func speak() -> String {
    return "Human can Speak"
    }
}

class Animal: LivingThings {
    @objc var eyeColour: UIColor = UIColor.redColor()
    @objc func eat() -> String {
        return "Animal Food"
    }
}

let john = Human()

john.eat()

john.speak()
*/



// Protocol for implementing delegate pattern

/*

protocol ImportDataDelegate {
    func startImport()
    
    func finishedImport()
}

class DataImport: ImportDataDelegate {
    
    func startImport() {
        println("Import started")
    }
    
    func finishedImport() {
        println("Import finished")
    }
}

class DemoImport {
    var delegate: ImportDataDelegate?
    
    func startProcess() {
        delegate?.startImport()
        println("Doing some work ...")
        delegate?.finishedImport()
    }
}

let demoImport = DemoImport()

demoImport.delegate = DataImport()

demoImport.startProcess()

*/


