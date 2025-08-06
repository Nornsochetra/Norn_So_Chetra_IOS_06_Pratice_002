import Foundation


var closur: () -> Void = {}

// 1
func showNumber(number: Int, closure: @escaping () -> Void) {
    for numbers in 0...number {
        print("Numbers is : \(numbers)")
    }
    closur = closure
    print("Testing print under closure")
}
func printMessage(){
    print("This closure is working")
}
var number: () = showNumber(number: 5, closure: {
    printMessage()
})
closur()

// 2
func printMessage(message: String, trialingClosure: () -> Void){
    print("Message is : \(message)")
    trialingClosure()
}
printMessage(message: "Hello this is iOS") {
    print("Trailing closure executed")
}
    


