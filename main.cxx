
#include <iostream>
#include <cstdio>
#include <vector>

#include <cmath>

#include "BST.h"
#include "red_black_tree.h"
#include "linked_list.h"
#include "trie.h"


int compare(char *a,char*b){
    return abs(strcmp(a,b));
};

int greater_char(char a,char b){
    return a<b;
}

int main(int argc, char **argv)
{




    linked_list<int> list;

    list.push_back(1);
    list.push_back(2);
    list.push_back(3);
    list.push_back(4);
    list.push_back(5);
    list.push_back(6);
    list.push_back(7);
    list.push_back(8);
    list.push_back(9);



    try{
        printf("%d ",list.mToLastElement(1000));
    }catch(std::string e){
        printf("%s",e.c_str());
    }





    return 0;
}
