/*
    SetBitsTests.swift

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

class SetBitsTests: XCTestCase {
    func testSetBits() {
        var testValue: UInt8 = 1

        // from lsBit to msBit set the bit and compare again type value of 1, 2, 4, 8, 16, 32, 64, 128
        for bit in MemoryLayout<UInt8>.lsBit...MemoryLayout<UInt8>.msBit {
            var testUInt8 = UInt8.allZeros

            testUInt8[bit] = true

            XCTAssertEqual(testUInt8, testValue, "testUInt8 != testValue")

            if (bit < MemoryLayout<UInt8>.msBit) {
                testValue *= 2
            }
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testSetBits", testSetBits)
    ]
#endif
}
