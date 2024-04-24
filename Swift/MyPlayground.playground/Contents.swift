var value: Int? = 1000

if value != nil {
    print("값이 있다~ \(value!)")   // forced unwrapping
}

// optional binding
if let toShow = value {
    print(toShow)
}

// implicity unwrapped optional
var value2: Int! = value

print(value2 + 100)


typealias Sample = (valueOpt: Int?, value: Int)

var value3: Sample? = (100, 200)

if let v = value3 {
    print(v)
    
    if let v2 = v.valueOpt {
        print(v2)
    }
}

// chaining 지원
if let v3 = value3?.valueOpt {
    print(v3)
}

// guard <> if
