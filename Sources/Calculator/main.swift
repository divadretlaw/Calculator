//: Calculator

let calculator = Calculator()

// MARK: - Tests

let tests: List =
"""
(--------------------)1w
(- Calculator Tests -)1w
(--------------------)1w
()1w
(Format: "Test: A = B")1w
(A: Input; B: Top of stack after execution of A)1w
(Prints 1 after each successful test; 0 if the test failed)1w
()1w
(Test: 4 2- = 2)1w 4 2- 2= 1w
(Test: 4 2/ = 2)1w 4 2/ 2= 1w
(Test: 4 2% = 0)1w 4 2% 0= 1w
(Test: 4 2> = 1)1w 4 2> 1= 1w
(Test: 2 4< = 1)1w 2 4< 1= 1w
(Test: 2~ = -2)1w 2~ 2~= 1w
(Test: 2 1 2d = 1)1w 2 1 2d1= 1w
(Test: ()()()s = 3)1w ()()()s 3= 1w1d1d1d
(Test: 2l = 0)1w 2l 0= 1w1d
(Test: ()l = 0)1w ()l 0= 1w1d
(Test: (1 2+)l = 1)1w (1 2+)l 1= 1w1d
(Test: ()i = 0)1w ()i 0= 1w1d
(Test: 2i = 1)1w 2i 1= 1w1d
(Test: (1 2+)(2):)1w (1 2+)(2): a23= 1w
(Test: (123)!)1w (123)! s2= 1w1d1d
"""

calculator.load(register: 2, data: tests)

// MARK: - Prime factorization
// Add starting number if non is already there: (else)(if) check s = 3
// 		if: add 2 to the stack, as it is the first prime number
//		else: do nothing
// Check if N < 2
//		if: nothing to do 1 (or less) is not a prime
//		else: start prime factorization
// prime factorization: Check if divisible
//		if: print and divide and start again
//		else: increment and start again
//
// Usage: 'N 3ra' eg. '63 3ra'; Output: '3 3 7'

let primeFactorization: List =
"""
()(2)s3=1+da
((1+ 3ra)(1c1w/ 3ra) 4c4c%0=1+da)(1d1d1d)4c2<1+da
"""

calculator.load(register: 3, data: primeFactorization)

calculator.run()
