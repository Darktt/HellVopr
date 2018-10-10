import Vapor
import Foundation

/// Register your application's routes here.
public func routes(_ router: Router) throws
{
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    let dateClosure: (Request) -> String = {
        
        _ in
        
        let timeZone = TimeZone.CST
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:SS aa"
        
        let date = Date()
        
        return dateFormatter.string(from: date)
    }
    
    router.get("date", use: dateClosure)

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
