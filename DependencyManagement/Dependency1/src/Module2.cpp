#include <Dependency1/Module2.h>
#include <iostream>

namespace Dependency1 {
Module2::Module2() {
  std::cout << "I am Module2 from Dependency1" << std::endl;
}
} // namespace Dependency1