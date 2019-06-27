#ifdef __clang__
#include <veintrin.h>
unsigned long lvs_svs(unsigned long* pvx, int sy)
{
    // return pvx[sy]

    __vr vx = _ve_vld_vss(8, pvx);
    return _ve_lvs_svs_u64(vx, sy);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdio.h>
unsigned long lvs_svs(unsigned long* pvx, int sy);
int test_lvs()
{
    unsigned long x[256];
    memset(x, 0, sizeof(unsigned long) * 256);
    x[1] = 1215UL;
    unsigned long sx = lvs_svs(x, 1);

#ifdef MAIN
    fprintf(stderr, "%lu %lu\n", x[1], sx);
#endif
    return sx == 1215UL;
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    int ret = test_lvs();
    fprintf(stdout, "test_lvs: %s\n", ret ? "OK" : "NG");

    return 0;
}
#endif

