import Foundation

public struct CaseInsensitiveString {
    
    public let rawString: String
    
    public init(_ string: String) {
        self.rawString = string
    }
    
    func lowercased() -> String {
        return self.rawString.lowercased()
    }
}

public func ==(lhs: CaseInsensitiveString, rhs: CaseInsensitiveString) -> Bool {
    return lhs.lowercased() == rhs.lowercased()
}

public func ~=(string: String, cis: CaseInsensitiveString) -> Bool {
    return string.lowercased() == cis.lowercased()
}

extension CaseInsensitiveString: Hashable {
    public var hashValue: Int { return self.lowercased().hash }
}

extension CaseInsensitiveString: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self.init(value) }
}

extension CaseInsensitiveString: ExpressibleByExtendedGraphemeClusterLiteral {
    public init(extendedGraphemeClusterLiteral value: String) { self.init(value) }
}

extension CaseInsensitiveString: ExpressibleByUnicodeScalarLiteral {
    public init(unicodeScalarLiteral value: String) { self.init(value) }
}
