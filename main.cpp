#include <iostream>
#include "calculator.cpp"

int main() {
    Calculator calc;
    std::cout << "1 + 1 = " << calc.Add(1, 1) << std::endl;
    std::cout << "3 - 5 = " << calc.Sub(3, 5) << std::endl;
    return 0;
}