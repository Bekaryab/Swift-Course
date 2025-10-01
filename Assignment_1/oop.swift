import Foundation
func data4(){
    class Bike{
        var name = ""
        var gear = 0
    }
    
    var bike1 = Bike()
    bike1.name = "Yamaha"
    bike1.gear = 10
    //print("Name: \(bike1.name), Gear: \(bike1.gear)")
    /*
     Name: Yamaha, Gear: 10
     */
    
    
    
    
    
    class Employee{
        var employeeId = 0
    }
    var emp1 = Employee()
    var emp2 = Employee()
    emp1.employeeId = 1
    //print("Emp1: \(emp1.employeeId)")
    emp2.employeeId = 2
    //print("Emp2: \(emp2.employeeId)")
    /*
     Emp1: 1
     Emp2: 2
     */
    
    
    
    
    
    class Room{
        var length = 0.0
        var breadth = 0.0
        
        func calculateArea(){
            //print("Area of room:", length * breadth)
        }
    }
    
    var studyRoom = Room()
    studyRoom.length = 1.33
    studyRoom.breadth = 2.33
    studyRoom.calculateArea()
    /*
     Area of room: 3.0989000000000004
     */
    
    
    
    
    
    
    class Bike2{
        var name: String
        var gear: Int
        
        init(name: String, gear: Int){
            self.name = name
            self.gear = gear
        }
    }
    var bike2 = Bike2(name: "BMX bike", gear: 10)
    //print("Name: \(bike2.name), Gear: \(bike2.gear)")
    /*
     Name: BMX bike, Gear: 10
     */
    
    
    
    
    
    class Bike3{
        var color: String
        
        init(color: String){
            self.color = color
        }
    }
    
    var bike3 = Bike3(color: "Red")
    var bike3Copy = bike3
    bike3.color = "Black"
    //print(bike3Copy.color)
    /*
     Black
     */
    
    
    
    
    
    class Hall{
        var length = 0.0
        var breadth = 0.0
        var heigth = 0.0
        
        func caluculateArea(){
            print("Area of hall =", length * breadth)
        }
        
        func calculateValume(){
            print("Valume of hall = ", length * breadth * heigth)
        }
        
    }
    
    
    var hall1 = Hall()
    hall1.length = 43.4
    hall1.breadth = 33.3
    hall1.heigth = 22.2
    
    //hall1.calculateValume()
    //hall1.caluculateArea()
    /*
     Valume of hall =  32083.883999999995
     Area of hall = 1445.2199999999998
     */
    
    
    
    
    
    //Пример: статические методы Swift
    class Calculator{
        func muultiply(num1 : Int, num2 : Int) -> Int{
            return num1 * num2
        }
        
        static func add(num1 : Int, num2 : Int) -> Int{
            return num1 + num2
        }
    }
    
    var obj = Calculator()
    var res1 = obj.muultiply(num1: 1, num2: 2)
    //print(res1)
    var res2 = Calculator.add(num1: 3, num2: 4)
    //print(res2)
    /*
     2
     7
     */
    
    
    
    
    
    
    struct Counter{
        var value = 0
        
        mutating func increment(){
            value+=1   //this wrong code
        }
    }
    
    struct Person{
        
        var name: String
        
        func changeName(newName : String){
            //name = newName
        }
    }
    
    /*
     This is wrong  because we need a "mutating" function for change the name
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //Assignment: Swift- Programming Exercises on Loops, Conditions, and Collections
    
    for i in 1...100{
        if i % 5 == 0 && i % 3 == 0{
            //print("FizzBuzz:\(i)")
        }
        else if i % 5 == 0 {
            //print("Buzz: \(i)")
        }
        else if i % 3 == 0{
            //print("Fizz \(i)")
        }
    }
    
    
    
    
    func isPrime(number : Int) -> Bool{
        if number < 2 {
            return false
        }
        
        for i in 2..<number{
            if number % i == 0{
                return false
            }
        }
        return true
    }
    
    let dd = isPrime(number: 13)
    //print(dd)
    
    
    
    
    //Problem 3 Temperature Converter
    func celsitoFrangeit(_ c: Double) -> Double{
        return (c * 9/5) + 32
    }
    func celsitoKelvin(_ c: Double) -> Double{
        return c + 273.15
    }
    func FrangeitToCelsi(_ f: Double) -> Double{
        return (f - 32) * 5/9
    }
    func FrangeitToKelvin( _ f: Double) -> Double{
        return (f - 32) * 5/9 + 273.15
    }
    func KelvinToCelsi(_ k: Double) -> Double{
        return k - 273.15
    }
    func KelvinToFrangeit(_ k: Double) -> Double{
        return (k - 273.15) * 9/5 + 32
    }
    
    
    if let input = readLine(), let value = Double(input){
        print("Введите единицу измерения (C, F или K):")
        if let unit = readLine(){
            switch unit.uppercased(){
            case "C":
                print("Фаренгейт: \(celsitoFrangeit(value)) °F")
                print("Кельвин: \(celsitoKelvin(value))) K")
            case "F":
                print("Цельсий: \(FrangeitToCelsi(value)) °C")
                print("Кельвин: \(FrangeitToKelvin(value)) K")
            case "K":
                print("Цельсий: \(KelvinToCelsi(value)) °C")
                print("Фаренгейт: \(KelvinToFrangeit(value)) °F")
            default:
                print("Неизвестная единица. Введите C, F или K.")
            }
        }
    }
    
    
    
    
    //Problem 4: Shopping List Manager
    var pro: [String] = []
    func AddProduct(_ p: String){
        pro.append(p)
        print("Товар Добавлен")
    }
    func removeproduct(_ p : String){
        if let index = pro.firstIndex(of: p){
            pro.remove(at: index)
            print("Товар Удален")
        }
        else {
            print("Товар не найден")
        }
    }
    func listProduct(){
        print(pro)
    }
    
    
    if let InputStream = readLine(){
        if let inp = readLine(){
            switch inp.lowercased(){
                case "add":
                    AddProduct(InputStream)
                case "remove":
                    removeproduct(InputStream)
                case "list":
                    listProduct()
                default:
                    print("Неизвестная команда.")
            }
        }
    }
    
    
    
    
    //Problem 5 Word Frequency Counter
    print("Введите предложение:")
    if let input = readLine() {
        // 1. Удаляем пунктуацию и приводим всё к нижнему регистру
        let cleaned = input.lowercased().components(separatedBy: CharacterSet.punctuationCharacters).joined()
        
        // 2. Разбиваем на слова
        let words = cleaned.split(separator: " ").map { String($0) }
        
        // 3. Словарь для хранения частоты слов
        var frequency: [String: Int] = [:]
        
        // 4. Подсчёт слов
        for word in words {
            frequency[word, default: 0] += 1
        }
        
        // 5. Вывод результатов
        print("\nЧастота слов:")
        for (word, count) in frequency {
            print("\(word): \(count)")
        }
    }
    
    
    
    
    
    
    //6:fibonacci Sequence
    func fibonacci(_ n: Int) -> [Int] {
        if n <= 0 {
            return []
        }
        else if n == 0 {
            return [0]
        }
        
        
        var res: [Int] = [0,1]
        for _ in 2...n{
            var next = res[res.count - 1] + res[res.count - 2]
            res.append(next)
        }
        return res
    }
    
    var eee = fibonacci(0)
    //print(eee)

    
    
    
    
    
    //Problem 7 Grade Calculator
    func allsocers(_ grades: [Int]){
        var count = 0
        var counter = 0
        var maxGrade = 0
        var minGrade = grades[0]
        for i in grades{
            count += i
            counter += 1
            if maxGrade < i{
                maxGrade = i
            }
            if i < minGrade{
                minGrade = i
            }
        }
        var Res = count/counter
        print(Res)
        print(maxGrade)
        print(minGrade)
    }
    
    
    let studentData = [
        "Student 3": 85,
        "Student 2": 92,
        "Student 1": 78
    ]
    
    let allSocers: [Int] = Array(studentData.values)
    //allsocers(allSocers)
    
    
    
    
    
    //Problem 8: Palindrome Checker
    func isPalindrome(_ text: String) ->Bool{
        var value = text.lowercased()
        var cleanedString: [String] = []
        for character in value{
            if character.isLetter || character.isNumber{
                cleanedString.append(String(character))
            }
        }
        var length = cleanedString.count
        var reversedString: [String] = []
        for i in stride(from: length - 1, through: 0, by: -1 ){
            reversedString.append(String(cleanedString[i]))
        }
        if cleanedString == reversedString{
            return true
        }
        else{
            return false
        }
    }
    //var ss = isPalindrome("Kaza")
    
    
    
    
    
    
    
    //Problem 9: Simple Calculator
    /*
     while true{
         func add(_ a: Int, _ b: Int) -> Int{
             return a + b
         }
         func subtract(_ a: Int, _ b: Int) -> Int{
             return a - b
         }
         func multiply(_ a: Int, _ b: Int) -> Int{
             return a * b
         }
         func divide(_ a: Int, _ b: Int) ->Int{
             if b == 0{
                 return 0
             }
             return a / b
         }
         
         if let input1 = readLine(), let value1 = Int(input1){
             print("Pls wriiiiiiiite Secend Number:")
             if let input2 = readLine(), let value2 = Int(input2){
                 print("Pls wriiiiiiiite Operation:")
                 if let input3 = readLine(){
                     switch input3{
                     case "+":
                         print(add(value1, value2))
                     case "-":
                         print(subtract(value1, value2))
                     case "*":
                         print(multiply(value1, value2))
                     case "/":
                         print(divide(value1, value2))
                     default:
                         print("Wrong Operation!")
                     }
                 }
             }
         }
         print("You want to stop: Stop")
         if let stop = readLine(){
             if stop == "Stop"{
                 break
             }
         }
     }
     
     */
    
    
    
    
    
    
    
    //Problem 10 Unique Characters
    func hashUniqueCharacters(_ text: String) ->Bool{
        var unique = Set<Character>()
        var length = text.count
        for i in text{
            unique.insert(i)
        }
        var length2 = unique.count
        if length2 != length{
            return false
        }
        return true
    }
    
    if let inputs = readLine(){
        print(hashUniqueCharacters(inputs))
    }
}
