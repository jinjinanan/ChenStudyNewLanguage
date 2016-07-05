//
//  OperateString.cpp
//  studyStringVectorAndArray
//
//  Created by JSB_02 on 16/6/23.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#include "OperateString.hpp"

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::getline;

void getALineString(){
    string getAstringByCin;
    cout << "please Enter a line string" << endl;
    // cin 反复读取，
    // getline 一次读取一整行
    while (getline(cin,getAstringByCin)) {
        if (!getAstringByCin.empty()) {
            cout << getAstringByCin << endl;
        }
    }
}

void getALineStringByGetLine(){
    string stringByGetLine;
    cout << " please Enter a line string " << endl;
    while (cin >> stringByGetLine) {
        cout << stringByGetLine << endl;
    }
}

string compareTwoString(){
    string fristString, secondString;
    cout << " please Enter two string " << endl;
    int i = 0;
    while (i < 2) {
       
        if (i == 0) {
            cout << " please Enter frist string " << endl;
            cin >> fristString;
        }
        if (i == 1) {
            cout << " please Enter second string " << endl;
            cin >> secondString;
        }
         i++ ;
    }
    if (fristString > secondString) {
        return fristString;
    }
    else{
        return secondString;
    }
}

void handleString(){
    string s("Hello World!!!");
//    for(auto c : s){
//        cout << c << endl;
//    }
    decltype(s.size()) punct_cnt = 0;
    for(auto c : s)
        if(ispunct(c))
            ++punct_cnt;
    cout << punct_cnt
    << " punctuation characters in " << s << endl;
}

void uppercase(){
    string s;
    getline(cin, s);
    for(auto &c:s)
        c = toupper(c);
    cout << s << endl;
}


