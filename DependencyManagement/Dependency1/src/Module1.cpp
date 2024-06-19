#include <Dependency1/Module1.h>
#include <iostream>

namespace Dependency1 {
Module1::Module1() {
  std::cout << "I am Module1 from Dependency1" << std::endl;
}
} // namespace Dependency1