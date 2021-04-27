#include <cstdint>

#ifdef __clang__
#include <velintrin.h>
uint64_t lcr_sss(uint64_t sy, uint64_t sz)
{
    return _vel_lcr_sss(sy, sz);
}

uint64_t lcr_sis(uint64_t sy, uint64_t sz)
{
    return _vel_lcr_sss(3, sy + sz - 3);
}

uint64_t lcr_ssz(uint64_t sy, uint64_t sz)
{
    return _vel_lcr_sss(sy + sz, 0);
}

uint64_t lcr_siz(uint64_t sy, uint64_t sz)
{
    return _vel_lcr_sss(15, 0);
}

void scr_sss(uint64_t sx, uint64_t sy, uint64_t sz)
{
    _vel_scr_sss(sx, sy, sz);
}

void scr_sis(uint64_t sx, uint64_t sy, uint64_t sz)
{
    _vel_scr_sss(sx, 3, sy + sz - 3);
}

void scr_ssz(uint64_t sx, uint64_t sy, uint64_t sz)
{
    _vel_scr_sss(sx, sy + sz, 0);
}

void scr_siz(uint64_t sx, uint64_t sy, uint64_t sz)
{
    _vel_scr_sss(sx, 15, 0);
}

uint64_t tscr_ssss(uint64_t sx, uint64_t sy, uint64_t sz)
{
    return _vel_tscr_ssss(sx, sy, sz);
}

uint64_t tscr_ssis(uint64_t sx, uint64_t sy, uint64_t sz)
{
    return _vel_tscr_ssss(sx, 3, sy + sz - 3);
}

uint64_t tscr_sssz(uint64_t sx, uint64_t sy, uint64_t sz)
{
    return _vel_tscr_ssss(sx, sy + sz, 0);
}

uint64_t tscr_ssiz(uint64_t sx, uint64_t sy, uint64_t sz)
{
    return _vel_tscr_ssss(sx, 15, 0);
}

uint64_t fidcr_s0(uint64_t sy) { return _vel_fidcr_sss(sy, 0); }
uint64_t fidcr_s1(uint64_t sy) { return _vel_fidcr_sss(sy, 1); }
uint64_t fidcr_s2(uint64_t sy) { return _vel_fidcr_sss(sy, 2); }
uint64_t fidcr_s3(uint64_t sy) { return _vel_fidcr_sss(sy, 3); }
uint64_t fidcr_s4(uint64_t sy) { return _vel_fidcr_sss(sy, 4); }
uint64_t fidcr_s5(uint64_t sy) { return _vel_fidcr_sss(sy, 5); }
uint64_t fidcr_s6(uint64_t sy) { return _vel_fidcr_sss(sy, 6); }
uint64_t fidcr_s7(uint64_t sy) { return _vel_fidcr_sss(sy, 7); }

uint64_t fidcr_i0(uint64_t sy) { return _vel_fidcr_sss(12, 0); }
uint64_t fidcr_i1(uint64_t sy) { return _vel_fidcr_sss(12, 1); }
uint64_t fidcr_i2(uint64_t sy) { return _vel_fidcr_sss(12, 2); }
uint64_t fidcr_i3(uint64_t sy) { return _vel_fidcr_sss(12, 3); }
uint64_t fidcr_i4(uint64_t sy) { return _vel_fidcr_sss(12, 4); }
uint64_t fidcr_i5(uint64_t sy) { return _vel_fidcr_sss(12, 5); }
uint64_t fidcr_i6(uint64_t sy) { return _vel_fidcr_sss(12, 6); }
uint64_t fidcr_i7(uint64_t sy) { return _vel_fidcr_sss(12, 7); }
#endif // __clang__

#ifdef TEST
#include <cstring>
#include <cstdio>
#include <vector>
//#include "util.h"

extern uint64_t lcr_sss(uint64_t sy, uint64_t sz);
extern uint64_t lcr_sis(uint64_t sy, uint64_t sz);
extern uint64_t lcr_ssz(uint64_t sy, uint64_t sz);
extern uint64_t lcr_siz(uint64_t sy, uint64_t sz);

extern void scr_sss(uint64_t sx, uint64_t sy, uint64_t sz);
extern void scr_sis(uint64_t sx, uint64_t sy, uint64_t sz);
extern void scr_ssz(uint64_t sx, uint64_t sy, uint64_t sz);
extern void scr_siz(uint64_t sx, uint64_t sy, uint64_t sz);

extern uint64_t tscr_ssss(uint64_t sx, uint64_t sy, uint64_t sz);
extern uint64_t tscr_ssis(uint64_t sx, uint64_t sy, uint64_t sz);
extern uint64_t tscr_sssz(uint64_t sx, uint64_t sy, uint64_t sz);
extern uint64_t tscr_ssiz(uint64_t sx, uint64_t sy, uint64_t sz);

extern uint64_t fidcr_s0(uint64_t sy);
extern uint64_t fidcr_s1(uint64_t sy);
extern uint64_t fidcr_s2(uint64_t sy);
extern uint64_t fidcr_s3(uint64_t sy);
extern uint64_t fidcr_s4(uint64_t sy);
extern uint64_t fidcr_s5(uint64_t sy);
extern uint64_t fidcr_s6(uint64_t sy);
extern uint64_t fidcr_s7(uint64_t sy);

extern uint64_t fidcr_i0(uint64_t sy);
extern uint64_t fidcr_i1(uint64_t sy);
extern uint64_t fidcr_i2(uint64_t sy);
extern uint64_t fidcr_i3(uint64_t sy);
extern uint64_t fidcr_i4(uint64_t sy);
extern uint64_t fidcr_i5(uint64_t sy);
extern uint64_t fidcr_i6(uint64_t sy);
extern uint64_t fidcr_i7(uint64_t sy);

int check_values(char const* name,
                 std::vector<uint64_t> const& v,
                 std::vector<uint64_t> const& exp)
{
    int flag = v == exp;
#ifdef MAIN
    fprintf(stderr, "%s: %s\n", name, flag ? "OK" : "NG");
#endif
    return flag;
}

int check_value(char const* name, uint64_t v, uint64_t exp)
{
    return check_values(name, {v}, {exp});
}

// LCR

int test_lcr_sss()
{
    scr_sss(1215, 12, 0);
    return check_value(__FUNCTION__, lcr_sss(12, 0), 1215);
}

int test_lcr_sis()
{
    scr_sss(1216, 13, 0);
    return check_value(__FUNCTION__, lcr_sis(13, 0), 1216);
}

int test_lcr_ssz()
{
    scr_sss(1217, 14, 0);
    return check_value(__FUNCTION__, lcr_ssz(14, 0), 1217);
}

int test_lcr_siz()
{
    scr_sss(1218, 15, 0);
    return check_value(__FUNCTION__, lcr_siz(15, 0), 1218);
}

// SCR

int test_scr_sss()
{
    scr_sss(1976, 0, 12);
    return check_value(__FUNCTION__, lcr_sss(0, 12), 1976);
}

int test_scr_sis()
{
    scr_sis(1977, 0, 13);
    return check_value(__FUNCTION__, lcr_sss(0, 13), 1977);
}

int test_scr_ssz()
{
    scr_ssz(1978, 0, 14);
    return check_value(__FUNCTION__, lcr_sss(0, 14), 1978);
}

int test_scr_siz()
{
    scr_siz(1979, 0, 15);
    return check_value(__FUNCTION__, lcr_sss(0, 15), 1979);
}


int check_tscr(char const* name, uint64_t before, uint64_t after,
               uint64_t sx, uint64_t exp_before)
{
    uint64_t exp_after = exp_before;
    if ((exp_before & (1UL << 63)) == 0)
        exp_after = sx + (1UL << 63);

#if 0
    fprintf(stderr, "before=%016lx after=%016lx"
            " exp_before=%016lx exp_after=%016lx\n",
            before, after, exp_before, exp_after);
#endif

    return check_values(name, {before, after}, {exp_before, exp_after});
}

int test_tscr_01(char const* name, 
                 uint64_t (*tscr)(uint64_t sx, uint64_t sy, uint64_t sz),
                 int cr)
{
    uint64_t sx0 = 0x1215UL;
    scr_sss(sx0, cr, 0);
    uint64_t sx1 = tscr(0x1976, cr, 0);
    uint64_t sx2 = lcr_sss(cr, 0);

    return check_tscr(name, sx1, sx2, 0x1976, sx0);
}

int test_tscr_02(char const* name, 
                 uint64_t (*tscr)(uint64_t sx, uint64_t sy, uint64_t sz),
                 int cr)
{
    uint64_t sx0 = 0x1215UL + (1UL << 63);
    scr_sss(sx0, cr, 0);
    uint64_t sx1 = tscr(0x1976, cr, 0);
    uint64_t sx2 = lcr_sss(cr, 0);

    return check_tscr(name, sx1, sx2, 0x1976, sx0);
}

#define TEST_TSCR(NAME, CR) \
    int test_##NAME##_01() { \
        return test_tscr_01(__FUNCTION__, NAME, CR); \
    } \
    int test_##NAME##_02() { \
        return test_tscr_02(__FUNCTION__, NAME, CR); \
    }

TEST_TSCR(tscr_ssss, 12)
TEST_TSCR(tscr_ssis, 13)
TEST_TSCR(tscr_sssz, 14)
TEST_TSCR(tscr_ssiz, 15)

// FIDCR

int test_fidcr(char const* name,
               uint64_t (*fidcr)(uint64_t sy),
               uint64_t sx, uint64_t exp)
{
    scr_sss(sx, 12, 0);
    uint64_t sx0 = fidcr(12);
    uint64_t sx1 = lcr_sss(12, 0);

    return check_values(name, {sx0, sx1}, {sx, exp});
}

int test_fidcr_45_01(char const* name, uint64_t (*fidcr)(uint64_t sy)) 
{ 
    uint64_t sx = (0UL << 63) | (0x1976UL << 32) | 0x1;
    uint64_t exp = (1UL << 63) | (0x1976UL << 32) | 0x1976UL;
    return test_fidcr(name, fidcr_s4, sx, exp);
}

int test_fidcr_45_02(char const* name, uint64_t (*fidcr)(uint64_t sy)) 
{ 
    uint64_t sx = (0UL << 63) | (0x1976UL << 32) | 0x1215UL;
    uint64_t exp = (0UL << 63) | (0x1976UL << 32) | 0x1214UL;
    return test_fidcr(name, fidcr_s4, sx, exp);
}

int test_fidcr_67(char const* name, uint64_t (*fidcr)(uint64_t sy)) { 
    uint64_t sx = 1UL << 63;
    scr_sss(sx, 12, 0);
    uint64_t sx1 = fidcr(12);
    return check_value(name, sx >> 63, sx1 >> 63);
}

int test_fidcr_s0() { return test_fidcr(__FUNCTION__, fidcr_s0, 1215, 1216); }
int test_fidcr_s1() { return test_fidcr(__FUNCTION__, fidcr_s1, 1215, 1214); }
int test_fidcr_s2_01() { return test_fidcr(__FUNCTION__, fidcr_s2, 1215, 1216); }
int test_fidcr_s2_02() { return test_fidcr(__FUNCTION__, fidcr_s2, 0, 0); }
int test_fidcr_s3_01() { return test_fidcr(__FUNCTION__, fidcr_s3, 1215, 1214); }
int test_fidcr_s3_02() { return test_fidcr(__FUNCTION__, fidcr_s3, 0, 0); }
int test_fidcr_s4_01() { return test_fidcr_45_01(__FUNCTION__, fidcr_s4); }
int test_fidcr_s4_02() { return test_fidcr_45_02(__FUNCTION__, fidcr_s4); }
int test_fidcr_s5_01() { return test_fidcr_45_01(__FUNCTION__, fidcr_s5); }
int test_fidcr_s5_02() { return test_fidcr_45_02(__FUNCTION__, fidcr_s5); }
int test_fidcr_s6() { return test_fidcr_67(__FUNCTION__, fidcr_s6); }
int test_fidcr_s7() { return test_fidcr_67(__FUNCTION__, fidcr_s7); }

int test_fidcr_i0() { return test_fidcr(__FUNCTION__, fidcr_i0, 1215, 1216); }
int test_fidcr_i1() { return test_fidcr(__FUNCTION__, fidcr_i1, 1215, 1214); }
int test_fidcr_i2_01() { return test_fidcr(__FUNCTION__, fidcr_i2, 1215, 1216); }
int test_fidcr_i2_02() { return test_fidcr(__FUNCTION__, fidcr_i2, 0, 0); }
int test_fidcr_i3_01() { return test_fidcr(__FUNCTION__, fidcr_i3, 1215, 1214); }
int test_fidcr_i3_02() { return test_fidcr(__FUNCTION__, fidcr_i3, 0, 0); }
int test_fidcr_i4_01() { return test_fidcr_45_01(__FUNCTION__, fidcr_i4); }
int test_fidcr_i4_02() { return test_fidcr_45_02(__FUNCTION__, fidcr_i4); }
int test_fidcr_i5_01() { return test_fidcr_45_01(__FUNCTION__, fidcr_i5); }
int test_fidcr_i5_02() { return test_fidcr_45_02(__FUNCTION__, fidcr_i5); }
int test_fidcr_i6() { return test_fidcr_67(__FUNCTION__, fidcr_i6); }
int test_fidcr_i7() { return test_fidcr_67(__FUNCTION__, fidcr_i7); }

// TODO fidcr_i


#define FOR(F) \
    F(lcr_sss); \
    F(lcr_sis); \
    F(lcr_ssz); \
    F(lcr_siz); \
    F(scr_sss); \
    F(scr_sis); \
    F(scr_ssz); \
    F(scr_siz); \
    F(tscr_ssss_01); \
    F(tscr_ssss_02); \
    F(tscr_ssis_01); \
    F(tscr_ssis_02); \
    F(tscr_sssz_01); \
    F(tscr_sssz_02); \
    F(tscr_ssiz_01); \
    F(tscr_ssiz_02); \
    F(fidcr_s0); \
    F(fidcr_s1); \
    F(fidcr_s2_01); \
    F(fidcr_s2_02); \
    F(fidcr_s3_01); \
    F(fidcr_s3_02); \
    F(fidcr_s4_01); \
    F(fidcr_s4_02); \
    F(fidcr_s5_01); \
    F(fidcr_s5_02); \
    F(fidcr_s6); \
    F(fidcr_s7); \
    F(fidcr_i0); \
    F(fidcr_i1); \
    F(fidcr_i2_01); \
    F(fidcr_i2_02); \
    F(fidcr_i3_01); \
    F(fidcr_i3_02); \
    F(fidcr_i4_01); \
    F(fidcr_i4_02); \
    F(fidcr_i5_01); \
    F(fidcr_i5_02); \
    F(fidcr_i6); \
    F(fidcr_i7);

#ifdef HAVE_REGISTER_TEST
#include "register_test.h"
#define REGSITER_CR_TEST(NAME) REGISTER_TEST("vel_"#NAME, test_##NAME)
FOR(REGSITER_CR_TEST);
#endif
#endif // TEST

#ifdef MAIN
#include <cstdio>

int main(int argc, char* argv[])
{
#define RUN_TEST(NAME) test_##NAME()
    FOR(RUN_TEST);
    return 0;
}
#endif
