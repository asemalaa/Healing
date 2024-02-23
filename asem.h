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
#define loopu(i, j, q) for (ll i = (j); i < (q); i++)
#define loopd(i, n, j) for (ll i = (n); i >= (j); i--)

/*ll gcd(ll a, ll b)
{
  if (b == 0)
    return a;
  return gcd(b, a % b);
}
ll lcM(ll a, ll b)
{
  ll greater = max(a, b);
  ll smallest = min(a, b);
  for (ll i = greater * 2;; i += greater)
  {
    if (i % smallest == 0)
      return i;
  }
}
ll lcm(ll a, ll b)
{
  return (a / gcd(a, b)) * b;
}
int Sprime(int num)
{
  int t = 0;

  for (int i = 2; t < 2 && i * i <= num; ++i)
    while (num % i == 0)
      num /= i, ++t;
  if (num > 1)
    ++t;
  return t == 2;
}

/*int su(string s){
int c=0;
loopu(i,0,s.length()-1){
  c=c+s[i]-'0';
}
return c;
}*/

/*ll ph(ll n){
  double y=sqrt(n);
  int m=y;
   ll k;
  ll g=n;
  for(ll i=m;g<2*n;i++){
     k=i;
    g=(i*i)+i;
  }
  return k ;
}*/
/*
ll fib(ll n) {
  double phi = (1 + sqrt(5)) / 2;
  return round(pow(phi, n) / sqrt(5));
}
int bs(vector<int>& nums, int target){
   int l=0;
    int r=nums.size()-1;
    int mid;
        bool bo=0;
   int ans =0;
        if(nums[l]==target)bo=1, ans=l;
        else if(nums[r]==target)bo=1, ans=r;
        while(l<r&&!bo){
            mid=(l+r)/2;
            if(nums[mid]==target) bo=1, l=r,ans=mid;
            else   if(nums[l]==target)bo=1, ans=l;
            else if(nums[r]==target)bo=1, ans=r;
            else if(target>nums[mid]) l=mid+1;
            else r= mid-1;
        }

        if(bo) return ans;
        else return -1;
}
ll sw(int arr[],int k,int n){

ll ans,sw=arr[k-1];
ans=sw;
loopu(i,1,n-k){

  sw=arr[i+k-1]-arr[i];
  ans=max(ans,sw);
}
return ans;
}
bool cmp(pair<int, string> a, pair<int,string> b)
{
   if(a.first==b.first) return a.second < b.second;
   else return a.first>b.first;
}
struct mr
{
  int a;
  int m;
  int s;
  int e;
};
void zf(int arr[],int n){
  loopu(i,0,n-1)arr[i]=0;
}
string br(ll n){
  //ll p=(1<<31)*-1;
  string s="";
  //8
  while(n){
    if((n%2)&1) s+="1";
    else s+="0";
    n/=2;
    //p/=2;
  }
  reverse(s.begin(),s.end());
  return s;
}

bool cmp(pair<int, string> a, pair<int,string> b)
{
   if(a.first==b.first) return a.second < b.second;
   else return a.first>b.first;
}
struct mr
{
  int a;
  int m;
  int s;
  int e;
};

bool prime(ll x)
{
  if (x == 1||x==0) return false;
  if (x == 2) return true;
  ll j = ceil(sqrt(x));
  for (ll i = 2; i <= j; i++)
  {
    if (x % i == 0) return false;
  }
  return true;
}

*/
bool prime(ll x)
{
    if (x == 1 || x == 0)
        return false;
    if (x == 2)
        return true;
    ll j = ceil(sqrt(x));
    for (ll i = 2; i <= j; i++)
    {
        if (x % i == 0)
            return false;
    }
    return true;
}

void Mo3()
{
    int n, num, f, ans = 0;
    cin >> n;
    int arr[n];
    loopu(i, 0, n) cin >> arr[i];
    loopu(i, 0, n)
    {
        num = 1;
        for (int j = 2; j <= ceil(sqrt(arr[i])); j++)
        {
            if (arr[i] % j == 0)
            {
                num = max(arr[i] / j, max(j, num));
                //  j = arr[i];
            }
        }
        if (!prime(num))
        {
            ans = 1;
            break;
        }
    }
    if (ans)
        cout << "not unique";
    else
        cout << "unique";
}

int main(int argc, char **argv)
{
    int n = rnd.next(1, 1000000);
    cout << n << '\n';
    loopu(i, 1, n) cout << rnd.next(1, 1000000000) << ' ';
}