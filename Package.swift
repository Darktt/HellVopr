// swift-tools-version:4.0
import PackageDescription

let packageName: String = "HellWorld"
var dependencies: Array<Package.Dependency> = []

// 💧 A server-side Swift web framework.
dependencies.append(Package.Dependency.package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"))
    
// 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
dependencies.append(Package.Dependency.package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"))

var targets: Array<Target> = []
targets.append({
    
    let dependencies: Array<Target.Dependency> = ["FluentSQLite", "Vapor"]
    let target = Target.target(name: "App", dependencies: dependencies)
    
    return target
}())
targets.append(Target.target(name: "Run", dependencies: ["App"]))
targets.append(Target.testTarget(name: "AppTests", dependencies: ["App"]))

let package = Package(name: packageName, dependencies: dependencies, targets: targets)
