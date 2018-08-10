#include <iostream>
using namespace std;

#include <windows.h>
#include <Lmcons.h>

int main() {
	
	string url;	
	TCHAR name [ UNLEN + 1 ];
  DWORD size = UNLEN + 1;

    if (GetUserName( (TCHAR*)name, &size )){
  		//cout << name;
  		//url = "http://detec.atwebpages.com" << name;
	//	cout << url;		 
	   //system("start http://localhost/"+name);
  	}else{
  		cout << "Hello, unnamed person!\n";
  	}
  
      
    
   

   
  //system("shutdown -s -t 300");
  
  
  FreeConsole();
}
