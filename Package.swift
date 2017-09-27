// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PostgreSQLDriver",
    products: [
        .library(name: "PostgreSQLDriver", targets: ["PostgreSQLDriver"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor-community/postgresql.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/vapor/fluent.git", .upToNextMajor(from: "2.4.1")),
        .package(url: "https://github.com/vapor/random.git", .upToNextMajor(from: "1.2.0"))
    ],
    targets: [
        .target(name: "PostgreSQLDriver", dependencies: ["PostgreSQL", "Fluent", "Random"]),
        .testTarget(name: "PostgreSQLDriverTests", dependencies: ["PostgreSQLDriver"])
    ]
)
