
#include <iostream>
#include <cstdio>
#include <vector>

#include "BST.h"
#include "linked_list.h"
#include "trie.h"

int main(int argc, char **argv)
{

    trie<char> trie;
    char aux[]="santiago";
    trie.insert(aux);

    char pedo[]="ole";

    trie.insert(pedo);

    char olep[]="olep";

    printf("%s is in ?= %d\n",aux,trie.contains(aux));
    printf("%s is in ?= %d\n",pedo,trie.contains(pedo));
    printf("%s is in ?= %d\n",olep,trie.contains(olep));

    return 0;
}
