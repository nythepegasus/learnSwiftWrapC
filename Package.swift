// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "learnWrapC",
    targets: [
        .executableTarget(name: "learnWrapC", dependencies: ["CLib"]),
        .target(name: "CLib", dependencies: [],
          path: "Sources/CLib",
          exclude: [],
          sources: ["src/clib.c"],
          publicHeadersPath: "include",
          cSettings: []
        ),
    ]
)
