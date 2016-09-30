# Bitz - get/set bits

Swift library for getting and setting bits of primative value types as a subscript with boolean types.

## Usage

If [Swift Package Manager](https://github.com/apple/swift-package-manager) is
used, add this package as a dependency in `Package.swift`,

```swift
.Package(url: "https://github.com/itssofluffy/Bitz.git", majorVersion: 0)
```

## Examples

```swift
import Bitz

var byte = UInt8.allZeros      // byte = 0b00000000

byte[3] = true                 // byte = 0b00001000
byte[5] = true                 // byte = 0b00101000

byte = byte >> 1               // byte = 0b00010100

print("byte[0] = \(byte[0])")  // false
print("byte[1] = \(byte[1])")  // false
print("byte[2] = \(byte[2])")  // true
print("byte[3] = \(byte[3])")  // false
print("byte[4] = \(byte[4])")  // true
print("byte[5] = \(byte[5])")  // false
print("byte[6] = \(byte[6])")  // false
print("byte[7] = \(byte[7])")  // false

byte.flip(bit: 3)
print("byte[3] = \(byte[3])")  // true

```
