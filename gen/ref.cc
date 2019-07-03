#include <math.h>
#include <algorithm>
using namespace std;
#include "../refutils.h"
namespace ref {
void vbrdd_vsl(double* pvx, double sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrdd_vsvl(double* pvx, double sy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrdd_vsmvl(double* pvx, double sy, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy; }
    }
}
void vbrdl_vsl(long int* pvx, long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrdl_vsvl(long int* pvx, long int sy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrdl_vsmvl(long int* pvx, long int sy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy; }
    }
}
void vbrdl_vIl(long int* pvx, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3;
    }
}
void vbrdl_vIvl(long int* pvx, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3;
    }
}
void vbrdl_vImvl(long int* pvx, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3; }
    }
}
void vbrds_vsl(float* pvx, float sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrds_vsvl(float* pvx, float sy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrds_vsmvl(float* pvx, float sy, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy; }
    }
}
void vbrdw_vsl(int* pvx, int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrdw_vsvl(int* pvx, int sy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy;
    }
}
void vbrdw_vsmvl(int* pvx, int sy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy; }
    }
}
void vbrdw_vIl(int* pvx, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3;
    }
}
void vbrdw_vIvl(int* pvx, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3;
    }
}
void vbrdw_vImvl(int* pvx, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3; }
    }
}
void pvbrd_vsl(unsigned int* pvx, unsigned long int sy, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0;
    }
}
void pvbrd_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0;
    }
}
void pvbrd_vsMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0; }
    }
}
void vaddul_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddul_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddul_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddul_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddul_vIvl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddul_vIvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddul_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vaddul_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void vaddul_vIvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 + pvz[i]; }
    }
}
void vadduw_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vadduw_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vadduw_vsvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vadduw_vsvvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vadduw_vIvl(unsigned int* pvx, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vadduw_vIvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vadduw_vvvmvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vadduw_vsvmvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void vadduw_vIvmvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 + pvz[i]; }
    }
}
void pvaddu_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void pvaddu_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void pvaddu_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 + pvz[i];
    }
}
void pvaddu_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 + pvz[i];
    }
}
void pvaddu_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void pvaddu_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 + pvz[i]; }
    }
}
void vaddswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vaddswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void vaddswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 + pvz[i]; }
    }
}
void vaddswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vaddswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void vaddswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 + pvz[i]; }
    }
}
void pvadds_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void pvadds_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void pvadds_vsvl(int* pvx, unsigned long int sy, int* pvz, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 + pvz[i];
    }
}
void pvadds_vsvvl(int* pvx, unsigned long int sy, int* pvz, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 + pvz[i];
    }
}
void pvadds_vvvMvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void pvadds_vsvMvl(int* pvx, unsigned long int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 + pvz[i]; }
    }
}
void vaddsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vaddsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vaddsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 + pvz[i];
    }
}
void vaddsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vaddsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void vaddsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 + pvz[i]; }
    }
}
void vsubul_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubul_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubul_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubul_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubul_vIvl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubul_vIvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubul_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vsubul_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void vsubul_vIvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 - pvz[i]; }
    }
}
void vsubuw_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubuw_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubuw_vsvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubuw_vsvvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubuw_vIvl(unsigned int* pvx, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubuw_vIvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubuw_vvvmvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vsubuw_vsvmvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void vsubuw_vIvmvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 - pvz[i]; }
    }
}
void pvsubu_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void pvsubu_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void pvsubu_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 - pvz[i];
    }
}
void pvsubu_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 - pvz[i];
    }
}
void pvsubu_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void pvsubu_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 - pvz[i]; }
    }
}
void vsubswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vsubswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void vsubswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 - pvz[i]; }
    }
}
void vsubswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vsubswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void vsubswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 - pvz[i]; }
    }
}
void pvsubs_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void pvsubs_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void pvsubs_vsvl(int* pvx, unsigned long int sy, int* pvz, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 - pvz[i];
    }
}
void pvsubs_vsvvl(int* pvx, unsigned long int sy, int* pvz, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 - pvz[i];
    }
}
void pvsubs_vvvMvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void pvsubs_vsvMvl(int* pvx, unsigned long int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 - pvz[i]; }
    }
}
void vsubsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vsubsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vsubsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 - pvz[i];
    }
}
void vsubsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vsubsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void vsubsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 - pvz[i]; }
    }
}
void vmulul_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulul_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulul_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulul_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulul_vIvl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulul_vIvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulul_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vmulul_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void vmulul_vIvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 * pvz[i]; }
    }
}
void vmuluw_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmuluw_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmuluw_vsvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmuluw_vsvvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmuluw_vIvl(unsigned int* pvx, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmuluw_vIvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmuluw_vvvmvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vmuluw_vsvmvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void vmuluw_vIvmvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 * pvz[i]; }
    }
}
void vmulswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vmulswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void vmulswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 * pvz[i]; }
    }
}
void vmulswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vmulswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void vmulswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 * pvz[i]; }
    }
}
void vmulsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vmulsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void vmulsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 * pvz[i]; }
    }
}
void vmulslw_vvvl(long int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulslw_vvvvl(long int* pvx, int* pvy, int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vmulslw_vsvl(long int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulslw_vsvvl(long int* pvx, int sy, int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vmulslw_vIvl(long int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vmulslw_vIvvl(long int* pvx, int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 * pvz[i];
    }
}
void vdivul_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivul_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivul_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivul_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivul_vIvl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivul_vIvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivul_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vdivul_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vdivul_vIvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 / pvz[i]; }
    }
}
void vdivuw_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivuw_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivuw_vsvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivuw_vsvvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivuw_vIvl(unsigned int* pvx, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivuw_vIvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivuw_vvvmvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vdivuw_vsvmvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vdivuw_vIvmvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 / pvz[i]; }
    }
}
void vdivul_vvsl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivul_vvsvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int sy, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivul_vvIl(unsigned long int* pvx, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivul_vvIvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivul_vvsmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int sy, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / sy; }
    }
}
void vdivul_vvImvl(unsigned long int* pvx, unsigned long int* pvy, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / 3; }
    }
}
void vdivuw_vvsl(unsigned int* pvx, unsigned int* pvy, unsigned int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivuw_vvsvl(unsigned int* pvx, unsigned int* pvy, unsigned int sy, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivuw_vvIl(unsigned int* pvx, unsigned int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivuw_vvIvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivuw_vvsmvl(unsigned int* pvx, unsigned int* pvy, unsigned int sy, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / sy; }
    }
}
void vdivuw_vvImvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / 3; }
    }
}
void vdivswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vdivswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vdivswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 / pvz[i]; }
    }
}
void vdivswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vdivswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vdivswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 / pvz[i]; }
    }
}
void vdivswsx_vvsl(int* pvx, int* pvy, int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivswsx_vvsvl(int* pvx, int* pvy, int sy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivswsx_vvIl(int* pvx, int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivswsx_vvIvl(int* pvx, int* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivswsx_vvsmvl(int* pvx, int* pvy, int sy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / sy; }
    }
}
void vdivswsx_vvImvl(int* pvx, int* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / 3; }
    }
}
void vdivswzx_vvsl(int* pvx, int* pvy, int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivswzx_vvsvl(int* pvx, int* pvy, int sy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivswzx_vvIl(int* pvx, int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivswzx_vvIvl(int* pvx, int* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivswzx_vvsmvl(int* pvx, int* pvy, int sy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / sy; }
    }
}
void vdivswzx_vvImvl(int* pvx, int* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / 3; }
    }
}
void vdivsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vdivsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vdivsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 3 / pvz[i];
    }
}
void vdivsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vdivsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vdivsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = 3 / pvz[i]; }
    }
}
void vdivsl_vvsl(long int* pvx, long int* pvy, long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivsl_vvsvl(long int* pvx, long int* pvy, long int sy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sy;
    }
}
void vdivsl_vvIl(long int* pvx, long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivsl_vvIvl(long int* pvx, long int* pvy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / 3;
    }
}
void vdivsl_vvsmvl(long int* pvx, long int* pvy, long int sy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / sy; }
    }
}
void vdivsl_vvImvl(long int* pvx, long int* pvy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / 3; }
    }
}
void vcmpul_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpul_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpul_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpul_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpul_vIvl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpul_vIvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpul_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vcmpul_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void vcmpul_vIvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(3, pvz[i]); }
    }
}
void vcmpuw_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpuw_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpuw_vsvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpuw_vsvvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpuw_vIvl(unsigned int* pvx, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpuw_vIvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpuw_vvvmvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vcmpuw_vsvmvl(unsigned int* pvx, unsigned int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void vcmpuw_vIvmvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(3, pvz[i]); }
    }
}
void pvcmpu_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void pvcmpu_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void pvcmpu_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy0, pvz[i]);
    }
}
void pvcmpu_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy0, pvz[i]);
    }
}
void pvcmpu_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void pvcmpu_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy0, pvz[i]); }
    }
}
void vcmpswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vcmpswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void vcmpswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(3, pvz[i]); }
    }
}
void vcmpswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vcmpswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void vcmpswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(3, pvz[i]); }
    }
}
void pvcmps_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void pvcmps_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void pvcmps_vsvl(int* pvx, unsigned long int sy, int* pvz, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy0, pvz[i]);
    }
}
void pvcmps_vsvvl(int* pvx, unsigned long int sy, int* pvz, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy0, pvz[i]);
    }
}
void pvcmps_vvvMvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void pvcmps_vsvMvl(int* pvx, unsigned long int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy0, pvz[i]); }
    }
}
void vcmpsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vcmpsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vcmpsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(3, pvz[i]);
    }
}
void vcmpsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vcmpsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void vcmpsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(3, pvz[i]); }
    }
}
void vmaxswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vmaxswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vmaxswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vmaxswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vmaxswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(3, pvz[i]);
    }
}
void vmaxswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(3, pvz[i]);
    }
}
void vmaxswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void vmaxswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy, pvz[i]); }
    }
}
void vmaxswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(3, pvz[i]); }
    }
}
void vmaxswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vmaxswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vmaxswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vmaxswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vmaxswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(3, pvz[i]);
    }
}
void vmaxswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(3, pvz[i]);
    }
}
void vmaxswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void vmaxswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy, pvz[i]); }
    }
}
void vmaxswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(3, pvz[i]); }
    }
}
void pvmaxs_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void pvmaxs_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void pvmaxs_vsvl(int* pvx, unsigned long int sy, int* pvz, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy0, pvz[i]);
    }
}
void pvmaxs_vsvvl(int* pvx, unsigned long int sy, int* pvz, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy0, pvz[i]);
    }
}
void pvmaxs_vvvMvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void pvmaxs_vsvMvl(int* pvx, unsigned long int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy0, pvz[i]); }
    }
}
void vminswsx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vminswsx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vminswsx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vminswsx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vminswsx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(3, pvz[i]);
    }
}
void vminswsx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(3, pvz[i]);
    }
}
void vminswsx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void vminswsx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy, pvz[i]); }
    }
}
void vminswsx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(3, pvz[i]); }
    }
}
void vminswzx_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vminswzx_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vminswzx_vsvl(int* pvx, int sy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vminswzx_vsvvl(int* pvx, int sy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vminswzx_vIvl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(3, pvz[i]);
    }
}
void vminswzx_vIvvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(3, pvz[i]);
    }
}
void vminswzx_vvvmvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void vminswzx_vsvmvl(int* pvx, int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy, pvz[i]); }
    }
}
void vminswzx_vIvmvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(3, pvz[i]); }
    }
}
void pvmins_vvvl(int* pvx, int* pvy, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void pvmins_vvvvl(int* pvx, int* pvy, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void pvmins_vsvl(int* pvx, unsigned long int sy, int* pvz, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy0, pvz[i]);
    }
}
void pvmins_vsvvl(int* pvx, unsigned long int sy, int* pvz, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy0, pvz[i]);
    }
}
void pvmins_vvvMvl(int* pvx, int* pvy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void pvmins_vsvMvl(int* pvx, unsigned long int sy, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy0, pvz[i]); }
    }
}
void vmaxsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vmaxsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vmaxsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vmaxsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vmaxsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(3, pvz[i]);
    }
}
void vmaxsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(3, pvz[i]);
    }
}
void vmaxsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void vmaxsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy, pvz[i]); }
    }
}
void vmaxsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(3, pvz[i]); }
    }
}
void vminsl_vvvl(long int* pvx, long int* pvy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vminsl_vvvvl(long int* pvx, long int* pvy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vminsl_vsvl(long int* pvx, long int sy, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vminsl_vsvvl(long int* pvx, long int sy, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vminsl_vIvl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(3, pvz[i]);
    }
}
void vminsl_vIvvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(3, pvz[i]);
    }
}
void vminsl_vvvmvl(long int* pvx, long int* pvy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void vminsl_vsvmvl(long int* pvx, long int sy, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy, pvz[i]); }
    }
}
void vminsl_vIvmvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(3, pvz[i]); }
    }
}
void vand_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] & pvz[i];
    }
}
void vand_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] & pvz[i];
    }
}
void vand_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy & pvz[i];
    }
}
void vand_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy & pvz[i];
    }
}
void vand_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] & pvz[i]; }
    }
}
void vand_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy & pvz[i]; }
    }
}
void pvand_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] & pvz[i];
    }
}
void pvand_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] & pvz[i];
    }
}
void pvand_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 & pvz[i];
    }
}
void pvand_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 & pvz[i];
    }
}
void pvand_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] & pvz[i]; }
    }
}
void pvand_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 & pvz[i]; }
    }
}
void vor_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] | pvz[i];
    }
}
void vor_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] | pvz[i];
    }
}
void vor_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy | pvz[i];
    }
}
void vor_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy | pvz[i];
    }
}
void vor_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] | pvz[i]; }
    }
}
void vor_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy | pvz[i]; }
    }
}
void pvor_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] | pvz[i];
    }
}
void pvor_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] | pvz[i];
    }
}
void pvor_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 | pvz[i];
    }
}
void pvor_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 | pvz[i];
    }
}
void pvor_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] | pvz[i]; }
    }
}
void pvor_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 | pvz[i]; }
    }
}
void vxor_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] ^ pvz[i];
    }
}
void vxor_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] ^ pvz[i];
    }
}
void vxor_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy ^ pvz[i];
    }
}
void vxor_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy ^ pvz[i];
    }
}
void vxor_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] ^ pvz[i]; }
    }
}
void vxor_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy ^ pvz[i]; }
    }
}
void pvxor_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] ^ pvz[i];
    }
}
void pvxor_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] ^ pvz[i];
    }
}
void pvxor_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 ^ pvz[i];
    }
}
void pvxor_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 ^ pvz[i];
    }
}
void pvxor_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] ^ pvz[i]; }
    }
}
void pvxor_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 ^ pvz[i]; }
    }
}
void veqv_vvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(pvy[i] ^ pvz[i]);
    }
}
void veqv_vvvvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(pvy[i] ^ pvz[i]);
    }
}
void veqv_vsvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(sy ^ pvz[i]);
    }
}
void veqv_vsvvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(sy ^ pvz[i]);
    }
}
void veqv_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = ~(pvy[i] ^ pvz[i]); }
    }
}
void veqv_vsvmvl(unsigned long int* pvx, unsigned long int sy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = ~(sy ^ pvz[i]); }
    }
}
void pveqv_vvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(pvy[i] ^ pvz[i]);
    }
}
void pveqv_vvvvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(pvy[i] ^ pvz[i]);
    }
}
void pveqv_vsvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(sy0 ^ pvz[i]);
    }
}
void pveqv_vsvvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = ~(sy0 ^ pvz[i]);
    }
}
void pveqv_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = ~(pvy[i] ^ pvz[i]); }
    }
}
void pveqv_vsvMvl(unsigned int* pvx, unsigned long int sy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = ~(sy0 ^ pvz[i]); }
    }
}
void vsll_vvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x3f);
    }
}
void vsll_vvvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvy, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x3f);
    }
}
void vsll_vvsl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy & 0x3f);
    }
}
void vsll_vvsvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy & 0x3f);
    }
}
void vsll_vvIl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (3 & 0x3f);
    }
}
void vsll_vvIvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (3 & 0x3f);
    }
}
void vsll_vvvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvy, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (pvy[i] & 0x3f); }
    }
}
void vsll_vvsmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (sy & 0x3f); }
    }
}
void vsll_vvImvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (3 & 0x3f); }
    }
}
void pvsll_vvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x1f);
    }
}
void pvsll_vvvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x1f);
    }
}
void pvsll_vvsl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy0 & 0x1f);
    }
}
void pvsll_vvsvl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy0 & 0x1f);
    }
}
void pvsll_vvvMvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (pvy[i] & 0x1f); }
    }
}
void pvsll_vvsMvl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (sy0 & 0x1f); }
    }
}
void vsrl_vvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x3f);
    }
}
void vsrl_vvvvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvy, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x3f);
    }
}
void vsrl_vvsl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy & 0x3f);
    }
}
void vsrl_vvsvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy & 0x3f);
    }
}
void vsrl_vvIl(unsigned long int* pvx, unsigned long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (3 & 0x3f);
    }
}
void vsrl_vvIvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (3 & 0x3f);
    }
}
void vsrl_vvvmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int* pvy, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (pvy[i] & 0x3f); }
    }
}
void vsrl_vvsmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (sy & 0x3f); }
    }
}
void vsrl_vvImvl(unsigned long int* pvx, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (3 & 0x3f); }
    }
}
void pvsrl_vvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x1f);
    }
}
void pvsrl_vvvvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x1f);
    }
}
void pvsrl_vvsl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy0 & 0x1f);
    }
}
void pvsrl_vvsvl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy0 & 0x1f);
    }
}
void pvsrl_vvvMvl(unsigned int* pvx, unsigned int* pvz, unsigned int* pvy, unsigned int* pvm, unsigned int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (pvy[i] & 0x1f); }
    }
}
void pvsrl_vvsMvl(unsigned int* pvx, unsigned int* pvz, unsigned long int sy, unsigned int* pvm, unsigned int* pvd, int n)
{
    unsigned int sy0 = *(unsigned int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (sy0 & 0x1f); }
    }
}
void vslaw_vvvl(int* pvx, int* pvz, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x1f);
    }
}
void vslaw_vvvvl(int* pvx, int* pvz, unsigned long int* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x1f);
    }
}
void vslaw_vvsl(int* pvx, int* pvz, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy & 0x1f);
    }
}
void vslaw_vvsvl(int* pvx, int* pvz, unsigned long int sy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy & 0x1f);
    }
}
void vslaw_vvIl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (3 & 0x1f);
    }
}
void vslaw_vvIvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (3 & 0x1f);
    }
}
void vslaw_vvvmvl(int* pvx, int* pvz, unsigned long int* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (pvy[i] & 0x1f); }
    }
}
void vslaw_vvsmvl(int* pvx, int* pvz, unsigned long int sy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (sy & 0x1f); }
    }
}
void vslaw_vvImvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (3 & 0x1f); }
    }
}
void pvsla_vvvl(int* pvx, int* pvz, unsigned int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x1f);
    }
}
void pvsla_vvvvl(int* pvx, int* pvz, unsigned int* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x1f);
    }
}
void pvsla_vvsl(int* pvx, int* pvz, unsigned long int sy, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy0 & 0x1f);
    }
}
void pvsla_vvsvl(int* pvx, int* pvz, unsigned long int sy, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy0 & 0x1f);
    }
}
void pvsla_vvvMvl(int* pvx, int* pvz, unsigned int* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (pvy[i] & 0x1f); }
    }
}
void pvsla_vvsMvl(int* pvx, int* pvz, unsigned long int sy, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (sy0 & 0x1f); }
    }
}
void vslal_vvvl(long int* pvx, long int* pvz, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x3f);
    }
}
void vslal_vvvvl(long int* pvx, long int* pvz, unsigned long int* pvy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (pvy[i] & 0x3f);
    }
}
void vslal_vvsl(long int* pvx, long int* pvz, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy & 0x3f);
    }
}
void vslal_vvsvl(long int* pvx, long int* pvz, unsigned long int sy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (sy & 0x3f);
    }
}
void vslal_vvIl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (3 & 0x3f);
    }
}
void vslal_vvIvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] << (3 & 0x3f);
    }
}
void vslal_vvvmvl(long int* pvx, long int* pvz, unsigned long int* pvy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (pvy[i] & 0x3f); }
    }
}
void vslal_vvsmvl(long int* pvx, long int* pvz, unsigned long int sy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (sy & 0x3f); }
    }
}
void vslal_vvImvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] << (3 & 0x3f); }
    }
}
void vsraw_vvvl(int* pvx, int* pvz, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x1f);
    }
}
void vsraw_vvvvl(int* pvx, int* pvz, unsigned long int* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x1f);
    }
}
void vsraw_vvsl(int* pvx, int* pvz, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy & 0x1f);
    }
}
void vsraw_vvsvl(int* pvx, int* pvz, unsigned long int sy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy & 0x1f);
    }
}
void vsraw_vvIl(int* pvx, int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (3 & 0x1f);
    }
}
void vsraw_vvIvl(int* pvx, int* pvz, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (3 & 0x1f);
    }
}
void vsraw_vvvmvl(int* pvx, int* pvz, unsigned long int* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (pvy[i] & 0x1f); }
    }
}
void vsraw_vvsmvl(int* pvx, int* pvz, unsigned long int sy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (sy & 0x1f); }
    }
}
void vsraw_vvImvl(int* pvx, int* pvz, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (3 & 0x1f); }
    }
}
void pvsra_vvvl(int* pvx, int* pvz, unsigned int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x1f);
    }
}
void pvsra_vvvvl(int* pvx, int* pvz, unsigned int* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x1f);
    }
}
void pvsra_vvsl(int* pvx, int* pvz, unsigned long int sy, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy0 & 0x1f);
    }
}
void pvsra_vvsvl(int* pvx, int* pvz, unsigned long int sy, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy0 & 0x1f);
    }
}
void pvsra_vvvMvl(int* pvx, int* pvz, unsigned int* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (pvy[i] & 0x1f); }
    }
}
void pvsra_vvsMvl(int* pvx, int* pvz, unsigned long int sy, unsigned int* pvm, int* pvd, int n)
{
    int sy0 = *(int*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (sy0 & 0x1f); }
    }
}
void vsral_vvvl(long int* pvx, long int* pvz, unsigned long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x3f);
    }
}
void vsral_vvvvl(long int* pvx, long int* pvz, unsigned long int* pvy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (pvy[i] & 0x3f);
    }
}
void vsral_vvsl(long int* pvx, long int* pvz, unsigned long int sy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy & 0x3f);
    }
}
void vsral_vvsvl(long int* pvx, long int* pvz, unsigned long int sy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (sy & 0x3f);
    }
}
void vsral_vvIl(long int* pvx, long int* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (3 & 0x3f);
    }
}
void vsral_vvIvl(long int* pvx, long int* pvz, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] >> (3 & 0x3f);
    }
}
void vsral_vvvmvl(long int* pvx, long int* pvz, unsigned long int* pvy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (pvy[i] & 0x3f); }
    }
}
void vsral_vvsmvl(long int* pvx, long int* pvz, unsigned long int sy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (sy & 0x3f); }
    }
}
void vsral_vvImvl(long int* pvx, long int* pvz, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] >> (3 & 0x3f); }
    }
}
void vsfa_vvssl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned long int sz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (pvz[i] << (sy & 0x7)) + sz;
    }
}
void vsfa_vvssvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned long int sz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (pvz[i] << (sy & 0x7)) + sz;
    }
}
void vsfa_vvIsl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (pvz[i] << (3 & 0x7)) + sz;
    }
}
void vsfa_vvIsvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sz, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (pvz[i] << (3 & 0x7)) + sz;
    }
}
void vsfa_vvssmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sy, unsigned long int sz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (pvz[i] << (sy & 0x7)) + sz; }
    }
}
void vsfa_vvIsmvl(unsigned long int* pvx, unsigned long int* pvz, unsigned long int sz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (pvz[i] << (3 & 0x7)) + sz; }
    }
}
void vfaddd_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vfaddd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vfaddd_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vfaddd_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vfaddd_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vfaddd_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void vfadds_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vfadds_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void vfadds_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vfadds_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy + pvz[i];
    }
}
void vfadds_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void vfadds_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy + pvz[i]; }
    }
}
void pvfadd_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void pvfadd_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] + pvz[i];
    }
}
void pvfadd_vsvl(float* pvx, unsigned long int sy, float* pvz, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 + pvz[i];
    }
}
void pvfadd_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 + pvz[i];
    }
}
void pvfadd_vvvMvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] + pvz[i]; }
    }
}
void pvfadd_vsvMvl(float* pvx, unsigned long int sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 + pvz[i]; }
    }
}
void vfsubd_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vfsubd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vfsubd_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vfsubd_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vfsubd_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vfsubd_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void vfsubs_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vfsubs_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void vfsubs_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vfsubs_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy - pvz[i];
    }
}
void vfsubs_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void vfsubs_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy - pvz[i]; }
    }
}
void pvfsub_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void pvfsub_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] - pvz[i];
    }
}
void pvfsub_vsvl(float* pvx, unsigned long int sy, float* pvz, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 - pvz[i];
    }
}
void pvfsub_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 - pvz[i];
    }
}
void pvfsub_vvvMvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] - pvz[i]; }
    }
}
void pvfsub_vsvMvl(float* pvx, unsigned long int sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 - pvz[i]; }
    }
}
void vfmuld_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vfmuld_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vfmuld_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vfmuld_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vfmuld_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vfmuld_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void vfmuls_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vfmuls_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void vfmuls_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vfmuls_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvz[i];
    }
}
void vfmuls_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void vfmuls_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvz[i]; }
    }
}
void pvfmul_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void pvfmul_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] * pvz[i];
    }
}
void pvfmul_vsvl(float* pvx, unsigned long int sy, float* pvz, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 * pvz[i];
    }
}
void pvfmul_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 * pvz[i];
    }
}
void pvfmul_vvvMvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] * pvz[i]; }
    }
}
void pvfmul_vsvMvl(float* pvx, unsigned long int sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 * pvz[i]; }
    }
}
void vfdivd_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vfdivd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vfdivd_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vfdivd_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vfdivd_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vfdivd_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vfdivs_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vfdivs_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void vfdivs_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vfdivs_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vfdivs_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvy[i] / pvz[i]; }
    }
}
void vfdivs_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy / pvz[i]; }
    }
}
void vfdivdA_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vfdivdA_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void vfsqrtd_vvl(double* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = std::sqrt(pvy[i]);
    }
}
void vfsqrtd_vvvl(double* pvx, double* pvy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = std::sqrt(pvy[i]);
    }
}
void vfsqrts_vvl(float* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = std::sqrt(pvy[i]);
    }
}
void vfsqrts_vvvl(float* pvx, float* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = std::sqrt(pvy[i]);
    }
}
void vfcmpd_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vfcmpd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vfcmpd_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vfcmpd_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vfcmpd_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vfcmpd_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void vfcmps_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vfcmps_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void vfcmps_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vfcmps_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy, pvz[i]);
    }
}
void vfcmps_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void vfcmps_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy, pvz[i]); }
    }
}
void pvfcmp_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void pvfcmp_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(pvy[i], pvz[i]);
    }
}
void pvfcmp_vsvl(float* pvx, unsigned long int sy, float* pvz, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy0, pvz[i]);
    }
}
void pvfcmp_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = compare(sy0, pvz[i]);
    }
}
void pvfcmp_vvvMvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(pvy[i], pvz[i]); }
    }
}
void pvfcmp_vsvMvl(float* pvx, unsigned long int sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = compare(sy0, pvz[i]); }
    }
}
void vfmaxd_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vfmaxd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vfmaxd_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vfmaxd_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vfmaxd_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void vfmaxd_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy, pvz[i]); }
    }
}
void vfmaxs_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vfmaxs_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void vfmaxs_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vfmaxs_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy, pvz[i]);
    }
}
void vfmaxs_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void vfmaxs_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy, pvz[i]); }
    }
}
void pvfmax_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void pvfmax_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(pvy[i], pvz[i]);
    }
}
void pvfmax_vsvl(float* pvx, unsigned long int sy, float* pvz, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy0, pvz[i]);
    }
}
void pvfmax_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = max(sy0, pvz[i]);
    }
}
void pvfmax_vvvMvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(pvy[i], pvz[i]); }
    }
}
void pvfmax_vsvMvl(float* pvx, unsigned long int sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = max(sy0, pvz[i]); }
    }
}
void vfmind_vvvl(double* pvx, double* pvy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vfmind_vvvvl(double* pvx, double* pvy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vfmind_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vfmind_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vfmind_vvvmvl(double* pvx, double* pvy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void vfmind_vsvmvl(double* pvx, double sy, double* pvz, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy, pvz[i]); }
    }
}
void vfmins_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vfmins_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void vfmins_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vfmins_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy, pvz[i]);
    }
}
void vfmins_vvvmvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void vfmins_vsvmvl(float* pvx, float sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy, pvz[i]); }
    }
}
void pvfmin_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void pvfmin_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(pvy[i], pvz[i]);
    }
}
void pvfmin_vsvl(float* pvx, unsigned long int sy, float* pvz, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy0, pvz[i]);
    }
}
void pvfmin_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = min(sy0, pvz[i]);
    }
}
void pvfmin_vvvMvl(float* pvx, float* pvy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(pvy[i], pvz[i]); }
    }
}
void pvfmin_vsvMvl(float* pvx, unsigned long int sy, float* pvz, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = min(sy0, pvz[i]); }
    }
}
void vfmadd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + pvy[i];
    }
}
void vfmadd_vvvvvl(double* pvx, double* pvy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + pvy[i];
    }
}
void vfmadd_vsvvl(double* pvx, double sy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + sy;
    }
}
void vfmadd_vsvvvl(double* pvx, double sy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + sy;
    }
}
void vfmadd_vvsvl(double* pvx, double* pvy, double sy, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] + pvy[i];
    }
}
void vfmadd_vvsvvl(double* pvx, double* pvy, double sy, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] + pvy[i];
    }
}
void vfmadd_vvvvmvl(double* pvx, double* pvy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] + pvy[i]; }
    }
}
void vfmadd_vsvvmvl(double* pvx, double sy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] + sy; }
    }
}
void vfmadd_vvsvmvl(double* pvx, double* pvy, double sy, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvw[i] + pvy[i]; }
    }
}
void vfmads_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + pvy[i];
    }
}
void vfmads_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + pvy[i];
    }
}
void vfmads_vsvvl(float* pvx, float sy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + sy;
    }
}
void vfmads_vsvvvl(float* pvx, float sy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + sy;
    }
}
void vfmads_vvsvl(float* pvx, float* pvy, float sy, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] + pvy[i];
    }
}
void vfmads_vvsvvl(float* pvx, float* pvy, float sy, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] + pvy[i];
    }
}
void vfmads_vvvvmvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] + pvy[i]; }
    }
}
void vfmads_vsvvmvl(float* pvx, float sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] + sy; }
    }
}
void vfmads_vvsvmvl(float* pvx, float* pvy, float sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvw[i] + pvy[i]; }
    }
}
void pvfmad_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + pvy[i];
    }
}
void pvfmad_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + pvy[i];
    }
}
void pvfmad_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + sy0;
    }
}
void pvfmad_vsvvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] + sy0;
    }
}
void pvfmad_vvsvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 * pvw[i] + pvy[i];
    }
}
void pvfmad_vvsvvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 * pvw[i] + pvy[i];
    }
}
void pvfmad_vvvvMvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] + pvy[i]; }
    }
}
void pvfmad_vsvvMvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] + sy0; }
    }
}
void pvfmad_vvsvMvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 * pvw[i] + pvy[i]; }
    }
}
void vfmsbd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - pvy[i];
    }
}
void vfmsbd_vvvvvl(double* pvx, double* pvy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - pvy[i];
    }
}
void vfmsbd_vsvvl(double* pvx, double sy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - sy;
    }
}
void vfmsbd_vsvvvl(double* pvx, double sy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - sy;
    }
}
void vfmsbd_vvsvl(double* pvx, double* pvy, double sy, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] - pvy[i];
    }
}
void vfmsbd_vvsvvl(double* pvx, double* pvy, double sy, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] - pvy[i];
    }
}
void vfmsbd_vvvvmvl(double* pvx, double* pvy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] - pvy[i]; }
    }
}
void vfmsbd_vsvvmvl(double* pvx, double sy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] - sy; }
    }
}
void vfmsbd_vvsvmvl(double* pvx, double* pvy, double sy, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvw[i] - pvy[i]; }
    }
}
void vfmsbs_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - pvy[i];
    }
}
void vfmsbs_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - pvy[i];
    }
}
void vfmsbs_vsvvl(float* pvx, float sy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - sy;
    }
}
void vfmsbs_vsvvvl(float* pvx, float sy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - sy;
    }
}
void vfmsbs_vvsvl(float* pvx, float* pvy, float sy, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] - pvy[i];
    }
}
void vfmsbs_vvsvvl(float* pvx, float* pvy, float sy, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy * pvw[i] - pvy[i];
    }
}
void vfmsbs_vvvvmvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] - pvy[i]; }
    }
}
void vfmsbs_vsvvmvl(float* pvx, float sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] - sy; }
    }
}
void vfmsbs_vvsvmvl(float* pvx, float* pvy, float sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy * pvw[i] - pvy[i]; }
    }
}
void pvfmsb_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - pvy[i];
    }
}
void pvfmsb_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - pvy[i];
    }
}
void pvfmsb_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - sy0;
    }
}
void pvfmsb_vsvvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvz[i] * pvw[i] - sy0;
    }
}
void pvfmsb_vvsvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 * pvw[i] - pvy[i];
    }
}
void pvfmsb_vvsvvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy0 * pvw[i] - pvy[i];
    }
}
void pvfmsb_vvvvMvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] - pvy[i]; }
    }
}
void pvfmsb_vsvvMvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = pvz[i] * pvw[i] - sy0; }
    }
}
void pvfmsb_vvsvMvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = sy0 * pvw[i] - pvy[i]; }
    }
}
void vfnmadd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]);
    }
}
void vfnmadd_vvvvvl(double* pvx, double* pvy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]);
    }
}
void vfnmadd_vsvvl(double* pvx, double sy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + sy);
    }
}
void vfnmadd_vsvvvl(double* pvx, double sy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + sy);
    }
}
void vfnmadd_vvsvl(double* pvx, double* pvy, double sy, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] + pvy[i]);
    }
}
void vfnmadd_vvsvvl(double* pvx, double* pvy, double sy, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] + pvy[i]);
    }
}
void vfnmadd_vvvvmvl(double* pvx, double* pvy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]); }
    }
}
void vfnmadd_vsvvmvl(double* pvx, double sy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] + sy); }
    }
}
void vfnmadd_vvsvmvl(double* pvx, double* pvy, double sy, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (sy * pvw[i] + pvy[i]); }
    }
}
void vfnmads_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]);
    }
}
void vfnmads_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]);
    }
}
void vfnmads_vsvvl(float* pvx, float sy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + sy);
    }
}
void vfnmads_vsvvvl(float* pvx, float sy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + sy);
    }
}
void vfnmads_vvsvl(float* pvx, float* pvy, float sy, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] + pvy[i]);
    }
}
void vfnmads_vvsvvl(float* pvx, float* pvy, float sy, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] + pvy[i]);
    }
}
void vfnmads_vvvvmvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]); }
    }
}
void vfnmads_vsvvmvl(float* pvx, float sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] + sy); }
    }
}
void vfnmads_vvsvmvl(float* pvx, float* pvy, float sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (sy * pvw[i] + pvy[i]); }
    }
}
void pvfnmad_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]);
    }
}
void pvfnmad_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]);
    }
}
void pvfnmad_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + sy0);
    }
}
void pvfnmad_vsvvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] + sy0);
    }
}
void pvfnmad_vvsvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy0 * pvw[i] + pvy[i]);
    }
}
void pvfnmad_vvsvvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy0 * pvw[i] + pvy[i]);
    }
}
void pvfnmad_vvvvMvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] + pvy[i]); }
    }
}
void pvfnmad_vsvvMvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] + sy0); }
    }
}
void pvfnmad_vvsvMvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (sy0 * pvw[i] + pvy[i]); }
    }
}
void vfnmsbd_vvvvl(double* pvx, double* pvy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]);
    }
}
void vfnmsbd_vvvvvl(double* pvx, double* pvy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]);
    }
}
void vfnmsbd_vsvvl(double* pvx, double sy, double* pvz, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - sy);
    }
}
void vfnmsbd_vsvvvl(double* pvx, double sy, double* pvz, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - sy);
    }
}
void vfnmsbd_vvsvl(double* pvx, double* pvy, double sy, double* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] - pvy[i]);
    }
}
void vfnmsbd_vvsvvl(double* pvx, double* pvy, double sy, double* pvw, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] - pvy[i]);
    }
}
void vfnmsbd_vvvvmvl(double* pvx, double* pvy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]); }
    }
}
void vfnmsbd_vsvvmvl(double* pvx, double sy, double* pvz, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] - sy); }
    }
}
void vfnmsbd_vvsvmvl(double* pvx, double* pvy, double sy, double* pvw, unsigned int* pvm, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (sy * pvw[i] - pvy[i]); }
    }
}
void vfnmsbs_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]);
    }
}
void vfnmsbs_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]);
    }
}
void vfnmsbs_vsvvl(float* pvx, float sy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - sy);
    }
}
void vfnmsbs_vsvvvl(float* pvx, float sy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - sy);
    }
}
void vfnmsbs_vvsvl(float* pvx, float* pvy, float sy, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] - pvy[i]);
    }
}
void vfnmsbs_vvsvvl(float* pvx, float* pvy, float sy, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy * pvw[i] - pvy[i]);
    }
}
void vfnmsbs_vvvvmvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]); }
    }
}
void vfnmsbs_vsvvmvl(float* pvx, float sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] - sy); }
    }
}
void vfnmsbs_vvsvmvl(float* pvx, float* pvy, float sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (sy * pvw[i] - pvy[i]); }
    }
}
void pvfnmsb_vvvvl(float* pvx, float* pvy, float* pvz, float* pvw, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]);
    }
}
void pvfnmsb_vvvvvl(float* pvx, float* pvy, float* pvz, float* pvw, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]);
    }
}
void pvfnmsb_vsvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - sy0);
    }
}
void pvfnmsb_vsvvvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (pvz[i] * pvw[i] - sy0);
    }
}
void pvfnmsb_vvsvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy0 * pvw[i] - pvy[i]);
    }
}
void pvfnmsb_vvsvvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        pvx[i] =  - (sy0 * pvw[i] - pvy[i]);
    }
}
void pvfnmsb_vvvvMvl(float* pvx, float* pvy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] - pvy[i]); }
    }
}
void pvfnmsb_vsvvMvl(float* pvx, unsigned long int sy, float* pvz, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (pvz[i] * pvw[i] - sy0); }
    }
}
void pvfnmsb_vvsvMvl(float* pvx, float* pvy, unsigned long int sy, float* pvw, unsigned int* pvm, float* pvd, int n)
{
    float sy0 = *(float*)&sy;
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] =  - (sy0 * pvw[i] - pvy[i]); }
    }
}
void vrcpd_vvl(double* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / pvy[i];
    }
}
void vrcpd_vvvl(double* pvx, double* pvy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / pvy[i];
    }
}
void vrcps_vvl(float* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / pvy[i];
    }
}
void vrcps_vvvl(float* pvx, float* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / pvy[i];
    }
}
void pvrcp_vvl(float* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / pvy[i];
    }
}
void pvrcp_vvvl(float* pvx, float* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / pvy[i];
    }
}
void vrsqrtd_vvl(double* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / std::sqrt(pvy[i]);
    }
}
void vrsqrtd_vvvl(double* pvx, double* pvy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / std::sqrt(pvy[i]);
    }
}
void vrsqrts_vvl(float* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / std::sqrt(pvy[i]);
    }
}
void vrsqrts_vvvl(float* pvx, float* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / std::sqrt(pvy[i]);
    }
}
void pvrsqrt_vvl(float* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / std::sqrt(pvy[i]);
    }
}
void pvrsqrt_vvvl(float* pvx, float* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = 1.0f / std::sqrt(pvy[i]);
    }
}
void vcvtwdsx_vvl(int* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]+0.5);
    }
}
void vcvtwdsx_vvvl(int* pvx, double* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]+0.5);
    }
}
void vcvtwdsx_vvmvl(int* pvx, double* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (int)(pvy[i]+0.5); }
    }
}
void vcvtwdsxrz_vvl(int* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]);
    }
}
void vcvtwdsxrz_vvvl(int* pvx, double* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]);
    }
}
void vcvtwdsxrz_vvmvl(int* pvx, double* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (int)(pvy[i]); }
    }
}
void vcvtwdzx_vvl(int* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]+0.5);
    }
}
void vcvtwdzx_vvvl(int* pvx, double* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]+0.5);
    }
}
void vcvtwdzx_vvmvl(int* pvx, double* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (unsigned int)(pvy[i]+0.5); }
    }
}
void vcvtwdzxrz_vvl(int* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]);
    }
}
void vcvtwdzxrz_vvvl(int* pvx, double* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]);
    }
}
void vcvtwdzxrz_vvmvl(int* pvx, double* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (unsigned int)(pvy[i]); }
    }
}
void vcvtwssx_vvl(int* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]+0.5);
    }
}
void vcvtwssx_vvvl(int* pvx, float* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]+0.5);
    }
}
void vcvtwssx_vvmvl(int* pvx, float* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (int)(pvy[i]+0.5); }
    }
}
void vcvtwssxrz_vvl(int* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]);
    }
}
void vcvtwssxrz_vvvl(int* pvx, float* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]);
    }
}
void vcvtwssxrz_vvmvl(int* pvx, float* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (int)(pvy[i]); }
    }
}
void vcvtwszx_vvl(int* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]+0.5);
    }
}
void vcvtwszx_vvvl(int* pvx, float* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]+0.5);
    }
}
void vcvtwszx_vvmvl(int* pvx, float* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (unsigned int)(pvy[i]+0.5); }
    }
}
void vcvtwszxrz_vvl(int* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]);
    }
}
void vcvtwszxrz_vvvl(int* pvx, float* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (unsigned int)(pvy[i]);
    }
}
void vcvtwszxrz_vvmvl(int* pvx, float* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (unsigned int)(pvy[i]); }
    }
}
void pvcvtws_vvl(int* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]+0.5);
    }
}
void pvcvtws_vvvl(int* pvx, float* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]+0.5);
    }
}
void pvcvtws_vvMvl(int* pvx, float* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (int)(pvy[i]+0.5); }
    }
}
void pvcvtwsrz_vvl(int* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]);
    }
}
void pvcvtwsrz_vvvl(int* pvx, float* pvy, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (int)(pvy[i]);
    }
}
void pvcvtwsrz_vvMvl(int* pvx, float* pvy, unsigned int* pvm, int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (int)(pvy[i]); }
    }
}
void vcvtld_vvl(long int* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (long long)(pvy[i]+0.5);
    }
}
void vcvtld_vvvl(long int* pvx, double* pvy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (long long)(pvy[i]+0.5);
    }
}
void vcvtld_vvmvl(long int* pvx, double* pvy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (long long)(pvy[i]+0.5); }
    }
}
void vcvtldrz_vvl(long int* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (long long)(pvy[i]);
    }
}
void vcvtldrz_vvvl(long int* pvx, double* pvy, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (long long)(pvy[i]);
    }
}
void vcvtldrz_vvmvl(long int* pvx, double* pvy, unsigned int* pvm, long int* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        if (pvm[i] > 0) { pvx[i] = (long long)(pvy[i]); }
    }
}
void vcvtdw_vvl(double* pvx, int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (double)pvy[i];
    }
}
void vcvtdw_vvvl(double* pvx, int* pvy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (double)pvy[i];
    }
}
void vcvtsw_vvl(float* pvx, int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (float)pvy[i];
    }
}
void vcvtsw_vvvl(float* pvx, int* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (float)pvy[i];
    }
}
void pvcvtsw_vvl(float* pvx, int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (float)pvy[i];
    }
}
void pvcvtsw_vvvl(float* pvx, int* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (float)pvy[i];
    }
}
void vcvtdl_vvl(double* pvx, long int* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (double)pvy[i];
    }
}
void vcvtdl_vvvl(double* pvx, long int* pvy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (double)pvy[i];
    }
}
void vcvtds_vvl(double* pvx, float* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (double)pvy[i];
    }
}
void vcvtds_vvvl(double* pvx, float* pvy, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (double)pvy[i];
    }
}
void vcvtsd_vvl(float* pvx, double* pvy, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (float)pvy[i];
    }
}
void vcvtsd_vvvl(float* pvx, double* pvy, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = (float)pvy[i];
    }
}
void vmrg_vvvml(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvm[i] > 0 ? pvz[i] : pvy[i];
    }
}
void vmrg_vvvmvl(unsigned long int* pvx, unsigned long int* pvy, unsigned long int* pvz, unsigned int* pvm, unsigned long int* pvd, int n)
{
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvm[i] > 0 ? pvz[i] : pvy[i];
    }
}
void vmrgw_vvvMl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, int n)
{
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvm[i] > 0 ? pvz[i] : pvy[i];
    }
}
void vmrgw_vvvMvl(unsigned int* pvx, unsigned int* pvy, unsigned int* pvz, unsigned int* pvm, unsigned int* pvd, int n)
{
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvm[i] > 0 ? pvz[i] : pvy[i];
    }
}
void andm_mmm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 4; ++i)
        px[i] = py[i] & pz[i];
}

void andm_MMM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 8; ++i)
        px[i] = py[i] & pz[i];
}

void orm_mmm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 4; ++i)
        px[i] = py[i] | pz[i];
}

void orm_MMM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 8; ++i)
        px[i] = py[i] | pz[i];
}

void xorm_mmm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 4; ++i)
        px[i] = py[i] ^ pz[i];
}

void xorm_MMM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 8; ++i)
        px[i] = py[i] ^ pz[i];
}

void eqvm_mmm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 4; ++i)
        px[i] = ~(py[i] ^ pz[i]);
}

void eqvm_MMM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 8; ++i)
        px[i] = ~(py[i] ^ pz[i]);
}

void nndm_mmm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 4; ++i)
        px[i] = (~py[i]) & pz[i];
}

void nndm_MMM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 8; ++i)
        px[i] = (~py[i]) & pz[i];
}

void negm_mm(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 4; ++i)
        px[i] = ~py[i];
}

void negm_MM(unsigned long int* px, unsigned long int const* py, unsigned long int* pz, int n)
{
    for (int i = 0; i < 8; ++i)
        px[i] = ~py[i];
}

void approx_vfdivs_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void approx_vfdivs_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void approx_vfdivs_vsvl(float* pvx, float sy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void approx_vfdivs_vsvvl(float* pvx, float sy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void approx_vfdivs_vvsl(float* pvx, float* pvy, float sz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sz;
    }
}
void approx_vfdivs_vvsvl(float* pvx, float* pvy, float sz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / sz;
    }
}
void approx_vfdivd_vsvl(double* pvx, double sy, double* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void approx_vfdivd_vsvvl(double* pvx, double sy, double* pvz, double* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = sy / pvz[i];
    }
}
void approx_pvfdiv_vvvl(float* pvx, float* pvy, float* pvz, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
void approx_pvfdiv_vvvvl(float* pvx, float* pvy, float* pvz, float* pvd, int n)
{
    
    for (int i = 0; i < n; ++i) {
        pvx[i] = pvy[i] / pvz[i];
    }
}
}
