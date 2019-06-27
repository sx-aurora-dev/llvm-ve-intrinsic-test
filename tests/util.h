#ifndef UTIL_H
#define UTIL_H

#include <cstdlib>

template <typename T> static T getrand() { abort(); return 0; }
template<> double getrand() { return drand48(); }
template<> float getrand() { return (float)drand48(); }
template<> int getrand() { return (int)mrand48(); }
template<> long int getrand() { return (long int)mrand48() << 32 | mrand48(); }
template<> unsigned int getrand() { return (unsigned int)lrand48(); }
template<> unsigned long int getrand() { return (unsigned long int)lrand48() << 32 | lrand48(); }

#endif

