# Calculator [![Swift](https://img.shields.io/badge/swift-4.2-orange.svg?style=flat-square)](https://swift.org) [![License](https://img.shields.io/github/license/divadretlaw/Calculator.svg?style=flat-square)](LICENSE)

## How to use the Calculator

The calculator uses post-fix notation – first the arguments, then the operator. Arguments are integers or lists, see below. For example, `5 12+` applies the operator `+` to the arguments `5` and `12`, giving `17` as result. White space between `5` and `12` is necessary to separate the integers from each other.
Post-fix expressions are evaluated using a stack. Arguments are simply pushed onto the stack, operators take arguments from the stack and push results onto the stack. For example, `15 2 3 4+*-` is evaluated to `1`: First, the four numbers are pushed onto the stack, then the evaluation of `+` takes `3` and `4` from the top of the stack and pushes `7` onto the stack, the evaluation of `*` takes `2` and `7` from the stack and pushes `14` onto the stack, and finally `-` takes `15` and `14` from the stack and pushes 1 onto the stack.
Data enclosed in parentheses represent lists. A list is evaluated when applying the operator a to it. For example, `(2*)` is a list. When evaluating `4 3(2*)a+`, first `4`, `3` and `(2*)` are pushed onto the stack, then a takes the list from the stack and causes its contents to be evaluated by pushing `2` onto the stack and applying `*` to `3` and `2`, and finally `+` adds `4` and `6`. Hence `(2*)a` doubles the integer on top of the stack.

### Examples

The calculator is preloaded with a programm in register zero that prints a welcome message an then asks for user input which is then executed and the stack is printed to `stdout`. The calculator then asks for user input again until the calculator is exited

In register two are some basic tests which can be executed with `2ra`.

In register three is a programm for prime factorization wich can be executed with `{NUMBER} 3ra` eg. `63 3ra` wich will print `3 3 7` which are the prime factors of `63`

## Usage

This project uses [Swift](https://swift.org). To install Swift follow the instructions on [https://swift.org/getting-started/#installing-swift](https://swift.org/getting-started/#installing-swift)

### macOS

To use Xcode with this project simply run this command to generate a Xcode project file

```
swift package generate-xcodeproj
```

### Other platforms

To build and run the project a script is provided in the root directory of the project.

```
sh calculator.sh
```

This builds and then runs the Calculator.
