#ifdef __clang__
#include <veintrin.h>
void lsv_vss(void* pvx, int sy, unsigned long sz)
{
    //pvx[sy] = sz;

    __vr vx = _ve_vld_vss(8, pvx);
    vx = _ve_lsv_vvss(vx, sy, sz);
    _ve_vst_vss(vx, 8, pvx);
}
#endif

#ifdef TEST
#include <string.h>
#include <stdio.h>
extern void lsv_vss(void* pvx, int sy, unsigned long sz);
int test_lsv()
{
    unsigned long x[256];
    memset(x, 0, sizeof(unsigned long) * 256);
    lsv_vss(x, 1, 1215UL);

#ifdef MAIN
    fprintf(stderr, "%lu %lu %lu\n", x[0], x[1], x[2]);
#endif
    return x[1] == 1215UL;
}
#endif

#ifdef MAIN
int main(int argc, char* argv[])
{
    int ret = test_lsv();
    fprintf(stdout, "test_lsv: %s\n", ret ? "OK" : "NG");

    return 0;
}
#endif

