#include <Dependency1/Module1.h>
#include <Dependency1/Module2.h>
#include <Dependency2/Module1.h>
#include <Dependency2/Module2.h>

int main() {
  auto x11 = new Dependency1::Module1();
  auto x12 = new Dependency1::Module2();
  auto x21 = new Dependency2::Module1();
  auto x22 = new Dependency2::Module2();

  return 0;
}