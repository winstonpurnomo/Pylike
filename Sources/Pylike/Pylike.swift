public struct Pylike {
    public private(set) var text = "Hello, World!"


    public struct Counter<T: Hashable>: CustomStringConvertible {
        public var description: String {
            return dict.description
        }
        
        var dict: [T: Int] = [:]
        
        init(_ val: String) where T == String {
            for char in val {
                self.dict[String(char), default: 0] += 1
            }
        }
        
        init(_ val: Array<T>) {
            for elem in val {
                self.dict[elem, default: 0] += 1
            }
        }
        
        func elements() -> [T] {
            return Array(dict.keys)
        }
        
        mutating func clear() {
            dict = [:]
        }
    }
}
