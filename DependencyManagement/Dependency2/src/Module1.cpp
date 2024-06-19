#include <Dependency2/Module1.h>
#include <iostream>

namespace Dependency2 {
Module1::Module1() {
  std::cout << "I am Module1 from Dependency2" << std::endl;
}
} // namespace Dependency2