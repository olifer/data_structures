
#include <iostream>
#include <cstdio>
#include <vector>

#include <cmath>

#include "BST.h"
#include "linked_list.h"
#include "trie.h"


int compare(char *a,char*b){
    return abs(strcmp(a,b));
};

int main(int argc, char **argv)
{

  //
    char aux[]="santiago";
    char pedo[]="ole";
    char olep[]="cristina";
    char jorge[]="a";



        trie<char> trie;
        trie.insert(aux);
        trie.insert(pedo);
        trie.insert(olep);
        trie.insert(jorge);


    printf("%s is in ?= %d\n",aux,trie.contains(aux));
    printf("%s is in ?= %d\n",pedo,trie.contains(pedo));
    printf("%s is in ?= %d\n",olep,trie.contains(olep));
    printf("%s is in ?= %d\n",jorge,trie.contains(jorge));

    trie.print(std::cout);

    return 0;
}
