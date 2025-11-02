# ARM Assembly Programs

Small collection of short ARM assembly example programs for learning and reference.
Open any `.asm` file to read the problem statement and example test cases.

## Setup (Optional)

These assembly programs are designed to work with the Keil µVision IDE, which is commonly used for ARM development. Here's how to set up your environment:

1. Download and Install Keil µVision:
   - Visit the [Keil Website](https://www.keil.com/download/product/)
   - Download "MDK-Arm" (the main IDE package)
   - Run the installer and follow the installation wizard

2. Configure the IDE:
   - Launch Keil µVision
   - Go to Project → New Project
   - Select a directory and name for your project
   - Choose the target device (these examples use ARM Cortex-M series)
   - In the Device section, select ARM → ARM Cortex

3. Working with Assembly Files:
   - Right-click on Source Group in Project window
   - Select "Add Existing Files to Group"
   - Choose the `.asm` file you want to work with
   - Enable assembler in Project Options if needed

4. Running Programs:
   - Use the built-in simulator for testing
   - Click Debug → Start/Stop Debug Session
   - Step through code using F11 (Step Into)
   - Use the Register and Memory windows to observe changes

Note: A free license of Keil µVision has some limitations but is sufficient for these examples.

## Catalog of programs

- [Add two 32-bit numbers](arithmetic/add-32bit-numbers.asm)
- [Add two 64-bit numbers](arithmetic/add-64bit-numbers.asm)
- [Multiply two 32-bit numbers](arithmetic/multiply-32bit-numbers.asm)
- [Multiply two 64-bit numbers](arithmetic/multiply-64bit-numbers.asm)
- [Multiply without MUL instruction (examples)](arithmetic/multiply-without-mul-instruction.asm)
- [Multiply by 10 (compare methods)](arithmetic/multiply-by-ten-comparison.asm)
- [Subtract two 32-bit numbers](arithmetic/subtract-32bit-numbers.asm)
- [Subtract two 64-bit numbers](arithmetic/subtract-64bit-numbers.asm)
- [Division (repeated subtraction)](arithmetic/divide-numbers.asm)

- [Add corresponding elements of two arrays](array/add-array-elements.asm)
- [Find greatest of 2 numbers](array/find-greatest-two-numbers.asm)
- [Find greatest of 5 (with loop)](array/find-greatest-with-loop.asm)
- [Find greatest of 5 (without loop)](array/find-greatest-without-loop.asm)
- [Find smallest of 2 numbers](array/find-smallest-two-numbers.asm)
- [Find smallest of 5 (with loop)](array/find-smallest-with-loop.asm)
- [Find smallest of 5 (without loop)](array/find-smallest-without-loop.asm)
- [Sum of 5 numbers (with loop)](array/sum-numbers-with-loop.asm)
- [Sum of 5 numbers (without loop)](array/sum-numbers-without-loop.asm)
- [Difference of 5 numbers (with loop)](array/subtract-numbers-with-loop.asm)
- [Difference of 5 numbers (without loop)](array/subtract-numbers-without-loop.asm)

- [Binary ↔ Gray conversion](bit/convert-binary-to-gray.asm)
- [ASCII ↔ Hex conversion](bit/convert-ascii-hex.asm)
- [Hex ↔ BCD conversion](bit/convert-hex-bcd.asm)
- [Count ones and zeros in 32-bit number](bit/count-ones-zeros.asm)
- [Clear register contents (4 methods)](bit/clear-register-methods.asm)
- [Set specific bits (2,4,8)](bit/set-specific-bits.asm)

- [Store "hello" in memory (example)](memory/store-hello-string.asm)
- [Transfer block of data between memory locations](memory/transfer-memory-block.asm)

- [Check Armstrong number](number/check-armstrong.asm)
- [Check sign (+/-) using TST/shift](number/check-sign-tst.asm)
- [Check even/odd using TST/shift](number/check-even-odd-tst.asm)
- [Calculate factorial](number/calculate-factorial.asm)
- [Calculate square without MUL](number/calculate-square.asm)
- [Calculate GCD (subtraction method)](number/calculate-gcd.asm)
- [Calculate LCM (product / gcd)](number/calculate-lcm.asm)
- [Compare two numbers (three methods)](number/compare-numbers-three-methods.asm)
- [Conditional arithmetic example](number/conditional-arithmetic.asm)
- [Generate first 10 even numbers](number/generate-even-numbers.asm)
- [Generate Fibonacci sequence](number/generate-fibonacci.asm)
- [Generate first 10 odd numbers](number/generate-odd-numbers.asm)

- [Swap contents of two registers (3 ways)](register/swap-registers.asm)

- [Sort string alphabetically (version A)](string/sort-string-alphabetical.asm)
- [Sort string alphabetically (version B)](string/sort-string-alphabetical-alt.asm)
- [Search character in string](string/search-character.asm)
- [Reverse string](string/reverse-string.asm)
- [Count spaces in string](string/count-spaces.asm)
- [Convert lowercase to uppercase](string/convert-case.asm)
- [Compare two strings (length + content)](string/compare-strings.asm)
- [Check palindrome](string/check-palindrome.asm)
- [Check anagram (sort-based)](string/check-anagram.asm)


