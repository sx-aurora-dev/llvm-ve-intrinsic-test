#ifdef __clang__
int maxB_int(int a, int b) {
    return a < b ? b : a;
}
int minA_int(int a, int b) {
    return a < b ? a : b;
}
int minB_int(int a, int b) {
    return a > b ? b : a;
}
int maxA_int(int a, int b) {
    return a > b ? a : b;
}
unsigned int maxB_unsigned_int(unsigned int a, unsigned int b) {
    return a < b ? b : a;
}
unsigned int minA_unsigned_int(unsigned int a, unsigned int b) {
    return a < b ? a : b;
}
unsigned int minB_unsigned_int(unsigned int a, unsigned int b) {
    return a > b ? b : a;
}
unsigned int maxA_unsigned_int(unsigned int a, unsigned int b) {
    return a > b ? a : b;
}
long int maxB_long_int(long int a, long int b) {
    return a < b ? b : a;
}
long int minA_long_int(long int a, long int b) {
    return a < b ? a : b;
}
long int minB_long_int(long int a, long int b) {
    return a > b ? b : a;
}
long int maxA_long_int(long int a, long int b) {
    return a > b ? a : b;
}
unsigned long int maxB_unsigned_long_int(unsigned long int a, unsigned long int b) {
    return a < b ? b : a;
}
unsigned long int minA_unsigned_long_int(unsigned long int a, unsigned long int b) {
    return a < b ? a : b;
}
unsigned long int minB_unsigned_long_int(unsigned long int a, unsigned long int b) {
    return a > b ? b : a;
}
unsigned long int maxA_unsigned_long_int(unsigned long int a, unsigned long int b) {
    return a > b ? a : b;
}
float maxB_float(float a, float b) {
    return a < b ? b : a;
}
float minA_float(float a, float b) {
    return a < b ? a : b;
}
float minB_float(float a, float b) {
    return a > b ? b : a;
}
float maxA_float(float a, float b) {
    return a > b ? a : b;
}
double maxB_double(double a, double b) {
    return a < b ? b : a;
}
double minA_double(double a, double b) {
    return a < b ? a : b;
}
double minB_double(double a, double b) {
    return a > b ? b : a;
}
double maxA_double(double a, double b) {
    return a > b ? a : b;
}
#endif
#ifdef TEST
#include <stdio.h>
#include <stdlib.h>
int test_maxB_int() {
    int maxB_int(int, int);
#if 1
    int a = (int)mrand48();
    int b = (int)mrand48();
#else
    int a = (int)(mrand48() % 100);
    int b = (int)(mrand48() % 100);
#endif
    int c0 = maxB_int(a, b);
    int c1 = a < b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %d %d => %d\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minA_int() {
    int minA_int(int, int);
#if 1
    int a = (int)mrand48();
    int b = (int)mrand48();
#else
    int a = (int)(mrand48() % 100);
    int b = (int)(mrand48() % 100);
#endif
    int c0 = minA_int(a, b);
    int c1 = a < b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %d %d => %d\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minB_int() {
    int minB_int(int, int);
#if 1
    int a = (int)mrand48();
    int b = (int)mrand48();
#else
    int a = (int)(mrand48() % 100);
    int b = (int)(mrand48() % 100);
#endif
    int c0 = minB_int(a, b);
    int c1 = a > b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %d %d => %d\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxA_int() {
    int maxA_int(int, int);
#if 1
    int a = (int)mrand48();
    int b = (int)mrand48();
#else
    int a = (int)(mrand48() % 100);
    int b = (int)(mrand48() % 100);
#endif
    int c0 = maxA_int(a, b);
    int c1 = a > b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %d %d => %d\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxB_unsigned_int() {
    unsigned int maxB_unsigned_int(unsigned int, unsigned int);
#if 1
    unsigned int a = (unsigned int)mrand48();
    unsigned int b = (unsigned int)mrand48();
#else
    unsigned int a = (unsigned int)(mrand48() % 100);
    unsigned int b = (unsigned int)(mrand48() % 100);
#endif
    unsigned int c0 = maxB_unsigned_int(a, b);
    unsigned int c1 = a < b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %u %u => %u\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minA_unsigned_int() {
    unsigned int minA_unsigned_int(unsigned int, unsigned int);
#if 1
    unsigned int a = (unsigned int)mrand48();
    unsigned int b = (unsigned int)mrand48();
#else
    unsigned int a = (unsigned int)(mrand48() % 100);
    unsigned int b = (unsigned int)(mrand48() % 100);
#endif
    unsigned int c0 = minA_unsigned_int(a, b);
    unsigned int c1 = a < b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %u %u => %u\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minB_unsigned_int() {
    unsigned int minB_unsigned_int(unsigned int, unsigned int);
#if 1
    unsigned int a = (unsigned int)mrand48();
    unsigned int b = (unsigned int)mrand48();
#else
    unsigned int a = (unsigned int)(mrand48() % 100);
    unsigned int b = (unsigned int)(mrand48() % 100);
#endif
    unsigned int c0 = minB_unsigned_int(a, b);
    unsigned int c1 = a > b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %u %u => %u\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxA_unsigned_int() {
    unsigned int maxA_unsigned_int(unsigned int, unsigned int);
#if 1
    unsigned int a = (unsigned int)mrand48();
    unsigned int b = (unsigned int)mrand48();
#else
    unsigned int a = (unsigned int)(mrand48() % 100);
    unsigned int b = (unsigned int)(mrand48() % 100);
#endif
    unsigned int c0 = maxA_unsigned_int(a, b);
    unsigned int c1 = a > b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %u %u => %u\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxB_long_int() {
    long int maxB_long_int(long int, long int);
#if 1
    long int a = (long int)mrand48();
    long int b = (long int)mrand48();
#else
    long int a = (long int)(mrand48() % 100);
    long int b = (long int)(mrand48() % 100);
#endif
    long int c0 = maxB_long_int(a, b);
    long int c1 = a < b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %ld %ld => %ld\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minA_long_int() {
    long int minA_long_int(long int, long int);
#if 1
    long int a = (long int)mrand48();
    long int b = (long int)mrand48();
#else
    long int a = (long int)(mrand48() % 100);
    long int b = (long int)(mrand48() % 100);
#endif
    long int c0 = minA_long_int(a, b);
    long int c1 = a < b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %ld %ld => %ld\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minB_long_int() {
    long int minB_long_int(long int, long int);
#if 1
    long int a = (long int)mrand48();
    long int b = (long int)mrand48();
#else
    long int a = (long int)(mrand48() % 100);
    long int b = (long int)(mrand48() % 100);
#endif
    long int c0 = minB_long_int(a, b);
    long int c1 = a > b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %ld %ld => %ld\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxA_long_int() {
    long int maxA_long_int(long int, long int);
#if 1
    long int a = (long int)mrand48();
    long int b = (long int)mrand48();
#else
    long int a = (long int)(mrand48() % 100);
    long int b = (long int)(mrand48() % 100);
#endif
    long int c0 = maxA_long_int(a, b);
    long int c1 = a > b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %ld %ld => %ld\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxB_unsigned_long_int() {
    unsigned long int maxB_unsigned_long_int(unsigned long int, unsigned long int);
#if 1
    unsigned long int a = (unsigned long int)mrand48();
    unsigned long int b = (unsigned long int)mrand48();
#else
    unsigned long int a = (unsigned long int)(mrand48() % 100);
    unsigned long int b = (unsigned long int)(mrand48() % 100);
#endif
    unsigned long int c0 = maxB_unsigned_long_int(a, b);
    unsigned long int c1 = a < b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lu %lu => %lu\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minA_unsigned_long_int() {
    unsigned long int minA_unsigned_long_int(unsigned long int, unsigned long int);
#if 1
    unsigned long int a = (unsigned long int)mrand48();
    unsigned long int b = (unsigned long int)mrand48();
#else
    unsigned long int a = (unsigned long int)(mrand48() % 100);
    unsigned long int b = (unsigned long int)(mrand48() % 100);
#endif
    unsigned long int c0 = minA_unsigned_long_int(a, b);
    unsigned long int c1 = a < b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lu %lu => %lu\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minB_unsigned_long_int() {
    unsigned long int minB_unsigned_long_int(unsigned long int, unsigned long int);
#if 1
    unsigned long int a = (unsigned long int)mrand48();
    unsigned long int b = (unsigned long int)mrand48();
#else
    unsigned long int a = (unsigned long int)(mrand48() % 100);
    unsigned long int b = (unsigned long int)(mrand48() % 100);
#endif
    unsigned long int c0 = minB_unsigned_long_int(a, b);
    unsigned long int c1 = a > b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lu %lu => %lu\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxA_unsigned_long_int() {
    unsigned long int maxA_unsigned_long_int(unsigned long int, unsigned long int);
#if 1
    unsigned long int a = (unsigned long int)mrand48();
    unsigned long int b = (unsigned long int)mrand48();
#else
    unsigned long int a = (unsigned long int)(mrand48() % 100);
    unsigned long int b = (unsigned long int)(mrand48() % 100);
#endif
    unsigned long int c0 = maxA_unsigned_long_int(a, b);
    unsigned long int c1 = a > b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lu %lu => %lu\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxB_float() {
    float maxB_float(float, float);
#if 1
    float a = (float)mrand48();
    float b = (float)mrand48();
#else
    float a = (float)(mrand48() % 100);
    float b = (float)(mrand48() % 100);
#endif
    float c0 = maxB_float(a, b);
    float c1 = a < b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %f %f => %f\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minA_float() {
    float minA_float(float, float);
#if 1
    float a = (float)mrand48();
    float b = (float)mrand48();
#else
    float a = (float)(mrand48() % 100);
    float b = (float)(mrand48() % 100);
#endif
    float c0 = minA_float(a, b);
    float c1 = a < b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %f %f => %f\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minB_float() {
    float minB_float(float, float);
#if 1
    float a = (float)mrand48();
    float b = (float)mrand48();
#else
    float a = (float)(mrand48() % 100);
    float b = (float)(mrand48() % 100);
#endif
    float c0 = minB_float(a, b);
    float c1 = a > b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %f %f => %f\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxA_float() {
    float maxA_float(float, float);
#if 1
    float a = (float)mrand48();
    float b = (float)mrand48();
#else
    float a = (float)(mrand48() % 100);
    float b = (float)(mrand48() % 100);
#endif
    float c0 = maxA_float(a, b);
    float c1 = a > b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %f %f => %f\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxB_double() {
    double maxB_double(double, double);
#if 1
    double a = (double)mrand48();
    double b = (double)mrand48();
#else
    double a = (double)(mrand48() % 100);
    double b = (double)(mrand48() % 100);
#endif
    double c0 = maxB_double(a, b);
    double c1 = a < b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lf %lf => %lf\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minA_double() {
    double minA_double(double, double);
#if 1
    double a = (double)mrand48();
    double b = (double)mrand48();
#else
    double a = (double)(mrand48() % 100);
    double b = (double)(mrand48() % 100);
#endif
    double c0 = minA_double(a, b);
    double c1 = a < b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lf %lf => %lf\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_minB_double() {
    double minB_double(double, double);
#if 1
    double a = (double)mrand48();
    double b = (double)mrand48();
#else
    double a = (double)(mrand48() % 100);
    double b = (double)(mrand48() % 100);
#endif
    double c0 = minB_double(a, b);
    double c1 = a > b ? b : a;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lf %lf => %lf\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
int test_maxA_double() {
    double maxA_double(double, double);
#if 1
    double a = (double)mrand48();
    double b = (double)mrand48();
#else
    double a = (double)(mrand48() % 100);
    double b = (double)(mrand48() % 100);
#endif
    double c0 = maxA_double(a, b);
    double c1 = a > b ? a : b;
#ifdef MAIN
    fprintf(stderr, "%-40s %s # %lf %lf => %lf\n", __FUNCTION__, c0 == c1 ? "OK" : "NG", a, b, c0);
#endif
}
#endif
#ifdef MAIN
int main(int argc, char* argv[]) {
    test_maxB_int();
    test_minA_int();
    test_minB_int();
    test_maxA_int();
    test_maxB_unsigned_int();
    test_minA_unsigned_int();
    test_minB_unsigned_int();
    test_maxA_unsigned_int();
    test_maxB_long_int();
    test_minA_long_int();
    test_minB_long_int();
    test_maxA_long_int();
    test_maxB_unsigned_long_int();
    test_minA_unsigned_long_int();
    test_minB_unsigned_long_int();
    test_maxA_unsigned_long_int();
    test_maxB_float();
    test_minA_float();
    test_minB_float();
    test_maxA_float();
    test_maxB_double();
    test_minA_double();
    test_minB_double();
    test_maxA_double();
    return 0;
}
#endif
