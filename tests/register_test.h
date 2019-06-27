#ifndef REGISTER_H
#define REGISTER_H

#ifdef __cplusplus
extern "C" {
#endif
        void register_test(char const* name, int (*func)(void));
#ifdef __cplusplus
}
#endif


#define REGISTER_TEST_HELPER_UNIQ(name, cnt, func) \
        __attribute__((constructor)) \
        static void init##cnt() \
        { \
            register_test(name, func); \
        }

#define REGISTER_TEST_HELPER(name, cnt, func) \
    REGISTER_TEST_HELPER_UNIQ(name, cnt, func)

#define REGISTER_TEST(name, func) REGISTER_TEST_HELPER(name, __COUNTER__, func)
#endif

