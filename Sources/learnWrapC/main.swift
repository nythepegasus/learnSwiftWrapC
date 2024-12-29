import CLib

struct Test {
    let test: Int32
    let buh: Int8
    
    var test_t: test_t { CLib.test_t(test: test, buh: buh) }
    
    init(test: Int32, buh: Int8) {
        self.test = test
        self.buh = buh
    }

    init(_ test: Int32, _ buh: Int8) { self.init(test: test, buh: buh) }
}

print(print_test_size(Test(23, 84).test_t))
