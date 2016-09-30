/*
    GetBitsTest.swift

    Copyright (c) 2016 Stephen Whittle  All rights reserved.

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom
    the Software is furnished to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
    THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
    IN THE SOFTWARE.
*/

import XCTest

@testable import Bitz

class GetBitsTests: XCTestCase {
    func testGetBits() {
        var testUInt8 = UInt8.allZeros
        var testValue: UInt8 = 1

        // get a bit value and compare against it's types value of 1, 2, 4, 8, 16, 32, 64, 128
        for bit in MemoryLayout<UInt8>.lsBit...MemoryLayout<UInt8>.msBit {
            testUInt8 = testValue

            XCTAssertEqual(testUInt8[bit], true, "testUInt8[\(bit)] != true")

            for testBit in MemoryLayout<UInt8>.lsBit...MemoryLayout<UInt8>.msBit {
                if (testBit != bit) {
                    XCTAssertEqual(testUInt8[testBit], false, "testUInt8[\(testBit)] != false")
                }
            }

            if (bit < MemoryLayout<UInt8>.msBit) {
                testValue *= 2
            }
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testGetBits", testGetBits)
    ]
#endif
}
