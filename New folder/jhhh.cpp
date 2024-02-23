#include <bits/stdc++.h>
using namespace std;
#define ll long long int
int main()
{
  int t;
  cin >> t;
  while (t--)
  {
    ll x, y;
    cin >> x >> y;
    ll a[x], b[y];
    for (int i = 0; i < x; i++)
    {
      cin >> a[i];
    }
    for (int j = 0; j < y; j++)
    {
      cin >> b[j];
    }
    sort(a, a + x);
    sort(b, b + y);
    ll D = 0;
    for (int i = 0; i < x; i++)
    {
      D += max(abs(a[i] - b[y - i - 1]), abs(a[i] - b[(x - 1) - i]));
    }
    cout << D << '\n';
  }
}
