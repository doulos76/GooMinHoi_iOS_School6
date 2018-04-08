//
//  main.c
//  TestC
//
//  Created by dave on 08/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

//#include <stdio.h>
//
//int main(int argc, const char * argv[]) {
//  // insert code here...
//  printf("Hello, World!\n");
//  return 0;
//}


//#include <stdio.h>
//
//void main()
//{
//  int a = 10, b=3;
//  a *=(b-1);
//  //a = a * (b - 1 );
//  b = (a>15) ? (a+1):(a-1);
//  printf("a=%d b=%d\n", a, b);
////  return 0;
//}

//#include <stdio.h>
//main()
//{
//  char ch;
//  int in;
//  ch=in='A';
//  printf("ch=%d", ch);
//  ch=in=100;
//  printf("in=%c", in);
//}
//
//
//#include<stdio.h>
//void main() {
//int a=1, b=2, c=3, i, j; char d='w';
//i=a>=2 && d=='w';
//  j=b<2 || d=='w';
//  printf("i=%d j=%d", i, j);
//}

//현재
//#include<stdio.h>
//void main()
//{
//  int a=1, b=2, c=3, i, j;
//  char d='w';
//  i=a>=2 && d=='w';
//  j=b<2 || d=='w';
//  printf("i=%d j=%d", i, j);
//}





//수정

#include <stdio.h>  // Standard Lib. 첨부

// main 함수 실행
void main()
{
  // 변수 선언
  int a = 1, b = 2, c = 3, i, j;
  char d = 'w';
  
  // 연산 실행
  i = (a >= 2) && (d == 'w');
  j = (b < 2) || (d == 'w');
  
  // 결과 값 출력
  printf("i = %d j = %d", i, j);
}















