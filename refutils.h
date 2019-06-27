#ifndef REFUTILS_H
#define REFUTILS_H

template <typename T>
T compare(T y, T z)
{
#if 0
    if (y > z)
        return (T)1;
    else if (y == z)
        return (T)0;
    else if (z < y)
        return (T)-1;
#endif
    return y - z;
}

static long int compare(int y, long int z)
{
    return compare((long int)y, z);
}

static long int max(int a, long int b)
{
    return max((long int)a, b);
}

static long int min(int a, long int b)
{
    return min((long int)a, b);
}

#endif
