
#include <iostream>
#include <cstdio>
#include <vector>

#include <cmath>

#include "BST.h"
#include "red_black_tree.h"
#include "linked_list.h"
#include "trie.h"
#include "heap.h"

int compare(char *a,char*b){
    return abs(strcmp(a,b));
};

unsigned int greater_char(int a,int b){
    return a>=b;
}

int main(int argc, char **argv)
{




    heap<int> heap;
    //heap.insert(1,&greater_char);

    heap.insert(6,&greater_char);
    heap.insert(5,&greater_char);
    heap.insert(9,&greater_char);
    heap.insert(8,&greater_char);
    heap.insert(-4,&greater_char);

    printf(" %d ",heap.peek());

    heap.remove();

    heap.insert(3,&greater_char);

    printf(" %d ",heap.peek());



    return 0;
}
