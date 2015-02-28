
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
    For the right rotation, we look at left child of current.
                   (6)                  (3)
                  /  \                 /   \
                (3)   (7)  >>>>>      (2)  (6)
               /  \                        / \
              (2) (4)                    (4) (7)
     */

    RB_TREE<int> tree(3);

    tree.insert_iterative(2);
    tree.insert_iterative(6);
    tree.insert_iterative(4);
    tree.insert_iterative(7);



    std::vector<int> post=tree.in_order();




    std::vector<int>::iterator i=post.begin();

    while(i!=post.end()){
        printf("%d ",(*i));
        i++;
    }

    //printf("%d\n",tree.find_second_largest());

    return 0;
}
