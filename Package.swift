// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let cxxCipherSettings: [CXXSetting] = [
    .headerSearchPath("include"),
    .define("SQLITE_HAS_CODEC"),
    .define("SQLITE_TEMP_STORE", to: "2"),
    .define("SQLITE_SOUNDEX"),
    .define("SQLITE_THREADSAFE"),
    .define("SQLITE_ENABLE_RTREE"),
    .define("SQLITE_ENABLE_STAT3"),
    .define("SQLITE_ENABLE_STAT4"),
    .define("SQLITE_ENABLE_COLUMN_METADATA"),
    .define("SQLITE_ENABLE_MEMORY_MANAGEMENT"),
    .define("SQLITE_ENABLE_LOAD_EXTENSION"),
    .define("SQLITE_ENABLE_FTS4"),
    .define("SQLITE_ENABLE_FTS4_UNICODE61"),
    .define("SQLITE_ENABLE_FTS3_PARENTHESIS"),
    .define("SQLITE_ENABLE_UNLOCK_NOTIFY"),
    .define("SQLITE_ENABLE_JSON1"),
    .define("SQLITE_ENABLE_FTS5"),
    .define("SQLCIPHER_CRYPTO_CC"),
    .define("HAVE_USLEEP", to: "1"),
    .define("SQLITE_MAX_VARIABLE_NUMBER", to: "99999"),
    .define("SQLITE_DEBUG")
]

let package = Package(
    name: "SQLCipher",
    products: [
        .library(
            name: "SQLCipher",
            targets: ["SQLCipher"]
        ),
    ],
    targets: [
        .target(
            name: "SQLCipher",
            path: "Sources/CSources",
            cxxSettings: cxxCipherSettings,
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("Security"),
            ]
        )
    ]
)
