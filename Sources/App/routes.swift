import Vapor
import Foundation

/// Register your application's routes here.
public func routes(_ router: Router) throws
{
    // Basic "It works" example
    router.get {
        req in
        
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") {
        
        req in
        
        return "Hello, world!"
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
    
    // Date route.
    let dateClosure: (Request) -> String = {
        
        _ in
        
        let timeZone = TimeZone(abbreviation: "GMT+0800")
        
        guard let _timeZone = timeZone else {
            
            return "Time zone error."
        }
        
        let date = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = _timeZone
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:SS aa"
        
        return dateFormatter.string(from: date)
    }
    
    router.get("date", use: dateClosure)
}
