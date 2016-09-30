/*
    Bitz.swift

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

extension Int8 {
    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<Int8>.msBit -> (MemoryLayout<Int8>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<Int8>.lsBit && bit <= MemoryLayout<Int8>.msBit, "Int8 get bit \(bit) out of range.")

            let bit = Int8(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<Int8>.lsBit && bit <= MemoryLayout<Int8>.msBit, "Int8 set bit \(bit) out of range.")

            let bit = Int8(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<Int8>.lsBit && bit <= MemoryLayout<Int8>.msBit, "Int8 flip bit \(bit) out of range.")

        let bit = Int8(bit)

        self = self ^ (1 << bit)
    }
}

extension UInt8 {
    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<UInt8>.msBit -> (MemoryLayout<UInt8>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<UInt8>.lsBit && bit <= MemoryLayout<UInt8>.msBit, "UInt8 get bit \(bit) out of range.")

            let bit = UInt8(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<UInt8>.lsBit && bit <= MemoryLayout<UInt8>.msBit, "UInt8 set bit \(bit) out of range.")

            let bit = UInt8(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<UInt8>.lsBit && bit <= MemoryLayout<UInt8>.msBit, "UInt8 flip bit \(bit) out of range.")

        let bit = UInt8(bit)

        self = self ^ (1 << bit)
    }
}

extension Int16 {
    public init(msByte: Int8, lsByte: Int8) {
        self = Int16(msByte << 8) + Int16(lsByte)
    }

    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<Int16>.msBit -> (MemoryLayout<Int16>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<Int16>.lsBit && bit <= MemoryLayout<Int16>.msBit, "Int16 get bit \(bit) out of range.")

            let bit = Int16(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<Int16>.lsBit && bit <= MemoryLayout<Int16>.msBit, "Int16 set bit \(bit) out of range.")

            let bit = Int16(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<Int16>.lsBit && bit <= MemoryLayout<Int16>.msBit, "Int16 flip bit \(bit) out of range.")

        let bit = Int16(bit)

        self = self ^ (1 << bit)
    }
}

extension UInt16 {
    public init(msByte: UInt8, lsByte: UInt8) {
        self = UInt16(msByte << 8) + UInt16(lsByte)
    }

    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<UInt16>.msBit -> (MemoryLayout<UInt16>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<UInt16>.lsBit && bit <= MemoryLayout<UInt16>.msBit, "UInt16 get bit \(bit) out of range.")

            let bit = UInt16(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<UInt16>.lsBit && bit <= MemoryLayout<UInt16>.msBit, "UInt16 set bit \(bit) out of range.")

            let bit = UInt16(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<UInt16>.lsBit && bit <= MemoryLayout<UInt16>.msBit, "UInt16 flip bit \(bit) out of range.")

        let bit = UInt16(bit)

        self = self ^ (1 << bit)
    }
}

extension Int32 {
    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<Int32>.msBit -> (MemoryLayout<Int32>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<Int32>.lsBit && bit <= MemoryLayout<Int32>.msBit, "Int32 get bit \(bit) out of range.")

            let bit = Int32(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<Int32>.lsBit && bit <= MemoryLayout<Int32>.msBit, "Int32 set bit \(bit) out of range.")

            let bit = Int32(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<Int32>.lsBit && bit <= MemoryLayout<Int32>.msBit, "Int32 flip bit \(bit) out of range.")

        let bit = Int32(bit)

        self = self ^ (1 << bit)
    }
}

extension UInt32 {
    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<UInt32>.msBit -> (MemoryLayout<UInt32>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<UInt32>.lsBit && bit <= MemoryLayout<UInt32>.msBit, "UInt32 get bit \(bit) out of range.")

            let bit = UInt32(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<UInt32>.lsBit && bit <= MemoryLayout<UInt32>.msBit, "UInt32 set bit \(bit) out of range.")

            let bit = UInt32(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<UInt32>.lsBit && bit <= MemoryLayout<UInt32>.msBit, "UInt32 flip bit \(bit) out of range.")

        let bit = UInt32(bit)

        self = self ^ (1 << bit)
    }
}

extension Int64 {
    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<Int64>.msBit -> (MemoryLayout<Int64>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<Int64>.lsBit && bit <= MemoryLayout<Int64>.msBit, "Int64 get bit \(bit) out of range.")

            let bit = Int64(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<Int64>.lsBit && bit <= MemoryLayout<Int64>.msBit, "Int64 set bit \(bit) out of range.")

            let bit = Int64(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<Int64>.lsBit && bit <= MemoryLayout<Int64>.msBit, "Int64 flip bit \(bit) out of range.")

        let bit = Int64(bit)

        self = self ^ (1 << bit)
    }
}

extension UInt64 {
    /// Most Significate Bit -> Least Significate Bit: (MemoryLayout<UInt64>.msBit -> (MemoryLayout<UInt64>.lsBit
    public subscript(bit: Int) -> Bool {
        get {
            precondition(bit >= MemoryLayout<UInt64>.lsBit && bit <= MemoryLayout<UInt64>.msBit, "UInt64 get bit \(bit) out of range.")

            let bit = UInt64(bit)

            return ((self & (1 << bit)) == 0) ? false : true
        }
        set (setBit) {
            precondition(bit >= MemoryLayout<UInt64>.lsBit && bit <= MemoryLayout<UInt64>.msBit, "UInt64 set bit \(bit) out of range.")

            let bit = UInt64(bit)

            self = (setBit) ? self | (1 << bit) : self & ~(1 << bit)
        }
    }

    /// flip a bit's value
    public mutating func flip(bit: Int) {
        precondition(bit >= MemoryLayout<UInt64>.lsBit && bit <= MemoryLayout<UInt64>.msBit, "UInt64 flip bit \(bit) out of range.")

        let bit = UInt64(bit)

        self = self ^ (1 << bit)
    }
}
