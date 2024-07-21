#include <iostream>

int main() {
    std::cout << "\033[1m";
    std::cout << "This device is certified by:\n";
    std::cout << "\033[0m";

    std::cout << "\033[32m";
    std::cout << "Abraham Lincoln";
    std::cout << "\033[0m";

    std::cout << " - ";

    std::cout << "\033[36m";
    std::cout << "16th Prez\n";
    std::cout << "\033[0m";

    return 0;
}