
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

int greater_char(char a,char b){
    return a<b;
}

int main(int argc, char **argv)
{

    BST_TREE<char> tree('f');

    tree.insert_iterative('b');
    tree.insert_iterative('g');
    tree.insert_iterative('a');
    tree.insert_iterative('d');
    tree.insert_iterative('c');
    tree.insert_iterative('e');
    tree.insert_iterative('i');
    tree.insert_iterative('h');



    std::vector<char> post=tree.in_order();




    std::vector<char>::iterator i=post.begin();

    while(i!=post.end()){
        printf(" %c ",(*i));
        i++;
    }

    //printf("%d\n",tree.find_second_largest());

    return 0;
}
