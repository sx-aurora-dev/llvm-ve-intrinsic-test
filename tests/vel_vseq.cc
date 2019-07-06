#ifdef __clang__
#include <velintrin.h>
void vseq(unsigned long int* p)
{
    ;
    _vel_vst_vssl(_vel_vseq_vl(256), 8, p, 256);
}

void vseq_p(unsigned long int* p)
{
    ;
    _vel_vst_vssl(_vel_pvseq_vl(256), 8, p, 256);
}

void vseq_pl(unsigned long int* p)
{
    ;
    _vel_vst_vssl(_vel_pvseqlo_vl(256), 8, p, 256);
}

void vseq_pu(unsigned long int* p)
{
    ;
    _vel_vst_vssl(_vel_pvsequp_vl(256), 8, p, 256);
}
#endif

#ifdef TEST
#include <stdio.h>
void vseq(unsigned long int*);
void vseq_p(unsigned long int*);
void vseq_pu(unsigned long int*);
void vseq_pl(unsigned long int*);

int test_vseq()
{
    unsigned long int x[256];

    vseq(x);

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, "%s: x[%d]=%d\n", __FUNCTION__, i, x[i]);
#endif
        flag &= (x[i] == i);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_pvsequp()
{
    unsigned long int x[256];

    vseq_pu(x);

    unsigned int* y = (unsigned int*)x;

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, "%s: y[%d]=%d\n", __FUNCTION__, 2*i+1, y[2*i+1]);
#endif
        flag &= (y[2*i] == 0);
        flag &= (y[2*i+1] == i);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_pvseqlo()
{
    unsigned long int x[256];

    vseq_pl(x);

    unsigned int* y = (unsigned int*)x;

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, "%s: y[%d]=%d\n", __FUNCTION__, 2*i, y[2*i]);
#endif
        flag &= (y[2*i] == i);
        flag &= (y[2*i+1] == 0);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

int test_pvseq()
{
    unsigned long int x[256];

    vseq_p(x);

    unsigned int* y = (unsigned int*)x;

    int flag = 1;
    for (int i = 0; i < 256; ++i) {
#ifdef MAIN
        fprintf(stderr, "%s: y[%d]=%d y[%d]=%d\n", __FUNCTION__, i*2, y[2*i], i*2+1, y[2*i+1]);
#endif
        flag &= (y[i*2] == i*2+1);
        flag &= (y[i*2+1] == i*2);
    }

#ifdef MAIN
    fprintf(stderr, "%s: %s\n", __FUNCTION__, flag ? "OK" : "NG");
#endif

    return flag;
}

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
REGISTER_TEST("vel_vseq", test_vseq);
REGISTER_TEST("vel_pvseq", test_pvseq);
REGISTER_TEST("vel_pvseqlo", test_pvseqlo);
REGISTER_TEST("vel_pvsequp", test_pvsequp);
#endif
#endif // TEST

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vseq();
    test_pvseq();
    test_pvseqlo();
    test_pvsequp();
}
#endif

