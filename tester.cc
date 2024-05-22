#include <bits/stdc++.h>
using namespace std;

int maxi = 0;
int cnt=0;
int cnt_max=0;
void nPlusOne(int n) {
  maxi = max(maxi, n);
  ++cnt;
  if(n==1) return; 
  if(n%2) nPlusOne(3*n+1);
  else nPlusOne(n/2);
}

int main() {
  vector <pair<int,pair<int,int>>> v;

  for(int i=1; i<257; i++) {
    maxi = 0;
    nPlusOne(i);
    cnt_max = max(cnt_max, cnt);
    
    v.push_back({i,{ maxi, cnt}});
    cnt=0;
  }

  cout << cnt_max << endl;

  for(auto [x,y]: v) {
    auto [p,q] = y;
    cout << x << ' ' << p << ' ' << q;
    if(p>65535) cout << " === x";
    // if(p>255) cout << " === x";
    cout << endl;
  }

}