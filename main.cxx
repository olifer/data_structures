
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

    /*

                    (4)
                   /   \
                 (2)   (6)
                /  \   /  \
              (1) (3)(5)  (7)
                            \
                             (8)
     */

    RB_TREE<int> tree(4);
    tree.insert_iterative(2);
    tree.insert_iterative(6);

    tree.insert_iterative(7);
    tree.insert_iterative(1);
    tree.insert_iterative(5);
    tree.insert_iterative(3);
    tree.insert_iterative(8);

    std::vector<int> post=tree.in_order();
    RB_TREE<int>::iterator aux=tree.begin();




    std::vector<int>::iterator i=post.begin();

    while(i!=post.end()){
        printf("%d ",(*i));
        i++;
    }

    //printf("%d\n",tree.find_second_largest());

    return 0;
}
