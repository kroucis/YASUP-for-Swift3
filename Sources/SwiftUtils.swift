// YASUP for Swift 3 v1.0.0
// Copyright © Kyle Roucis 2016

import Foundation

extension Array
{
    public func count(howManyReturnTrue block: (Element) -> Bool) -> Int
    {
        return self.reduce(0) { (acc: Int, element) -> Int in
            if block(element)
            {
                return acc + 1
            }
            else
            {
                return acc
            }
        }
    }
}

extension Int
{
    public func times(_ block: (Int) -> Void)
    {
        (0..<self).forEach { (i) in
            block(i)
        }
    }

    public func counting(forward block: (Int) -> Void)
    {
        (1...self).forEach { (i) in
            block(i)
        }
    }

    public func counting(backward block: (Int) -> Void)
    {
        (0..<self).forEach { (i) in
            block(self - i)
        }
    }

    public var isEven : Bool
    {
        get
        {
            return self % 2 == 0
        }
    }

    public var isOdd : Bool
    {
        get
        {
            return !self.isEven
        }
    }
}

extension String
{
    public func forEach(character block: (Character) -> Void)
    {
        self.characters.forEach(block)
    }

    public func forEach(wordSeparatedBy separator: String = " ", _ block: (String) -> Void)
    {
        self.components(separatedBy: separator).forEach(block)
    }

    public func forEach(word block: (String) -> Void)
    {
        self.forEach(wordSeparatedBy: " ", block)
    }

    public func forEach(lineSeparatedBy separator: String = "\n", _ block: (String) -> Void)
    {
        self.forEach(wordSeparatedBy: separator, block)
    }

    public func forEach(line block: (String) -> Void)
    {
        self.forEach(lineSeparatedBy: "\n", block)
    }
}
