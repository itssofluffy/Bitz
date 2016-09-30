/*
    MemoryLayoutTests.swift

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

class MemoryLayoutTests: XCTestCase {
    func testMemoryLayout() {
        // test lsBit of primative types
        XCTAssertEqual(MemoryLayout<Int8>.lsBit, 0, "MemoryLayout<Int8>.lsBit != 0")
        XCTAssertEqual(MemoryLayout<UInt8>.lsBit, 0, "MemoryLayout<UInt8>.lsBit != 0")

        XCTAssertEqual(MemoryLayout<Int16>.lsBit, 0, "MemoryLayout<Int16>.lsBit != 0")
        XCTAssertEqual(MemoryLayout<UInt16>.lsBit, 0, "MemoryLayout<UInt16>.lsBit != 0")

        XCTAssertEqual(MemoryLayout<Int32>.lsBit, 0, "MemoryLayout<Int32>.lsBit != 0")
        XCTAssertEqual(MemoryLayout<UInt32>.lsBit, 0, "MemoryLayout<UInt32>.lsBit != 0")

        XCTAssertEqual(MemoryLayout<Int64>.lsBit, 0, "MemoryLayout<Int64>.lsBit != 0")
        XCTAssertEqual(MemoryLayout<UInt64>.lsBit, 0, "MemoryLayout<UInt64>.lsBit != 0")

        // test msBit of primative types
        XCTAssertEqual(MemoryLayout<Int8>.msBit, 7, "MemoryLayout<Int8>.msBit != 7")
        XCTAssertEqual(MemoryLayout<UInt8>.msBit, 7, "MemoryLayout<UInt8>.msBit != 7")

        XCTAssertEqual(MemoryLayout<Int16>.msBit, 15, "MemoryLayout<Int16>.msBit != 15")
        XCTAssertEqual(MemoryLayout<UInt16>.msBit, 15, "MemoryLayout<UInt16>.msBit != 15")

        XCTAssertEqual(MemoryLayout<Int32>.msBit, 31, "MemoryLayout<Int32>.msBit != 31")
        XCTAssertEqual(MemoryLayout<UInt32>.msBit, 31, "MemoryLayout<UInt32>.msBit != 31")

        XCTAssertEqual(MemoryLayout<Int64>.msBit, 63, "MemoryLayout<Int64>.msBit != 63")
        XCTAssertEqual(MemoryLayout<UInt64>.msBit, 63, "MemoryLayout<UInt64>.msBit != 63")
    }

#if !os(OSX)
    static let allTests = [
        ("testMemoryLayout", testMemoryLayout)
    ]
#endif
}
