EECE 2140 Mini Project 01 (Diego Juarez, Eric Sebastian Lopez, Anthony Santana Ortega, Joshua Marquez)

---------------------------

PURPOSE:
A C++ code that is able to convert temperatures between Celsius and Fahrenheit. 
This project features the use of pull requests, Github actions, and feature branches.

-------------------------------

INPUT:

'c' converts Celsius into Fahrenheit

'f' converts Fahrenheit into Celsius

----------------------------

OUTPUT:

'c 0' | 0 c converts to 32 f

'f 32' | 32 f converts to 0 c

'x 100' | Invalid Input

'c abc' | Invalid Input

Any unsupported direction or any non-number results in Invalid Input

-------------------------

BUILD:

mkdir -p build

g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o build/app

./build/app

-----------------------

TEST COMMANDS:

Type a direction and a temperature, for example 'c 0', and press Enter.

bash test.sh

------------------------

TESTS:

try1 | Celsius to Fahrenheit

'c 0' -> 0 c converts to 32 f

try2 | Fahrenheit to Celsius

'f 32' -> 32 f converts to 0 c

try3 | Unsupported Direction

'x 100' -> Invalid Input

try4 | Nonnumeric Temperature

'c abc' -> Invalid Input

-------------------------

LIMITATIONS:

- Only Celsius and Fahrenheit are supported.

- Only one conversion is performed per run.

- Uppercase 'C / F' are rejected.
  
- Extra text after the temperature (for example 'c 0 abc') is rejected

------------------------------------

AI-USE:

Claude.ai and ChatGPT were used for formatting assistance and debugging assistance
