/*
       -----------------------\                                                    /------------------------
 ---------------------------------------- <<<| M03tASSEM 3ALAA ELDEEN |>>>----------------------------------------
       -----------------------/                                                    \------------------------
 */
#include "testlib.h"
#include <bits/stdc++.h>
#include <bitset>
using namespace std;
typedef long long ll;
#define loopu(i, j, q) for (ll i = (j); i <= (q); i++)
#define loopd(i, n, j) for (ll i = (n); i >= (j); i--)

int main(int argc, char *argv[])
{
    registerGen(argc, argv, 1);
    int n = 100, y;
    cout << n << '\n';
    loopu(i, 1, n)
    {
        y = rnd.next(1, 1000000);
        cout << y << ' ';
    }
}