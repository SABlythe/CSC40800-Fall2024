#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
  int arr[1000];
  for (char ch ='1'; ch <= '9'; ch++)
    {
      cout << ch << " ";
      arr[ch] = 6;
    }

  for (int index=1; index<=9; index++)
    cout << arr[index] << endl;
  
  

  cout << endl;
  
  return 0;
}
