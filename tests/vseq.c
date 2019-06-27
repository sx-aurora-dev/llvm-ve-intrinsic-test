#ifdef __clang__
#include <veintrin.h>
void vseq(unsigned long int* p)
{
    _ve_lvl(256);
    _ve_vst_vss(_ve_vseq_v(), 8, p);
}

void vseq_p(unsigned int* p)
{
    _ve_lvl(256);
    _ve_vst_vss(_ve_pvseq_v(), 8, p);
}

void vseq_pl(unsigned int* p)
{
    _ve_lvl(256);
    _ve_vst_vss(_ve_pvseqlo_v(), 8, p);
}

void vseq_pu(unsigned int* p)
{
    _ve_lvl(256);
    _ve_vst_vss(_ve_pvsequp_v(), 8, p);
}
#endif

#ifdef TEST
#include <stdio.h>
void vseq(unsigned long int*);
void vseq_p(unsigned long int*);

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

#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    test_vseq();
    test_pvseq();
    test_pvseqlo();
    test_pvsequp();
}
#endif

