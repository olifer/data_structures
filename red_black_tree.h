/*
 * BST.cxx
 * 
 * Copyright 2015 Santiago <santiago@santiago-XPS>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 * 
 * 
 */


#include <iostream>
#include <cstdio>
#include <vector>
#include <queue>
#include <algorithm>
#include <stack>




template<class T>
class _RB_NODE{

    enum colour{
        RED,BLACK
    };


private:
    T value;

    colour color;

    _RB_NODE *left;
    _RB_NODE *right;
    _RB_NODE *parent;

public:


    _RB_NODE(_RB_NODE *copy){
        this->left=copy->get_left();
        this->right=copy->get_rigt();
        this->parent=copy->get_parent();
        color=copy->get_color();
    }

    _RB_NODE(){
        this->left=0x0;
        this->right=0x0;
        this->parent=0x0;
        color=RED;
    };

    colour get_color(){
        return this->color;
    }


    void make_red(){
        this->color=RED;
    }

    void make_black(){
        this->color=BLACK;
    }

    unsigned  is_red(){
        return this->color==RED;
    }

    int is_left_null(){
        return this->left==0x0;
    };

    int is_parent_null(){
        return this->parent==0x0;
    }

    void set_left(_RB_NODE * ll){
        this->left=ll;
    }

    void set_parent(_RB_NODE * pp){
        this->parent=pp;
    }

    void set_rigt(_RB_NODE * rr){
        this->right=rr;
    }


    _RB_NODE * get_left(){
        return this->left;
    }

    _RB_NODE * get_rigt(){
        return this->right;
    }

    _RB_NODE * get_parent(){
        return this->parent;
    }


    int is_right_null(){
        return this->right==0x0;
    };

    void set_value(T val){
        this->value=val;
    };

    T get_value(){
        return this->value;
    };

    bool is_leaf(){
        return this->is_left_null() && this->is_right_null();
    };

};

template<class T>
class RB_TREE{

private:
    _RB_NODE<T> *root;

    void insert(_RB_NODE<T>*,T,int (RB_TREE::*p)(T,T));
    void insert(_RB_NODE<T>*,T,int (*p)(T,T));
    int T_greater(T a, T b){return a>b;};
    void in_order(_RB_NODE<T>*,std::vector<T> &);
    bool is_full(_RB_NODE<T>*);
    T sum_leafs_value(_RB_NODE<T>*,T(*_P_)(T,T),void (*_I_)(T *));
    T find_second_largest(_RB_NODE<T>*);
    T find_largest(_RB_NODE<T>*);
    void insert_iterative(T,int (RB_TREE::*p)(T,T));
    void fix_insertion(_RB_NODE<T>*);
    void right_rotation(_RB_NODE<T>*);
    void left_rotation(_RB_NODE<T>*);
    void set_root(_RB_NODE<T>*);

public:

    RB_TREE(T);

    void insert(T value,int (*p)(T,T));
    void insert(T);
    std::vector<T> in_order();
    std::vector<T> pre_order();
    std::vector<T> post_order();
    std::vector<T> by_levels();

    bool is_full();
    T sum_leafs_value(T(*_P_)(T,T),void (*_I_)(T *));
    T find_second_largest();
    bool super_balanced();
    void insert_iterative(T);
    void insert_iterative(T,int(*)(T,T));

};


template<class T>
std::vector<T> RB_TREE<T>::by_levels() {
    std::vector<T> ret;
    std::queue<_RB_NODE<T> *> rec;

    rec.push(this->root);

    while(!rec.empty()){
        _RB_NODE<T> *aux=rec.front();
        rec.pop();

        ret.push_back(aux->get_value());

        if(!aux->is_left_null()){
            rec.push(aux->get_left());
        }

        if(!aux->is_right_null()){
            rec.push(aux->get_rigt());
        }

    }

    return ret;
};



template<class T>
void RB_TREE<T>::fix_insertion(_RB_NODE<T> *x) {
    //This is the first step to have balanced red black tree

    while (!x->is_parent_null() && x->get_parent()->is_red()) {

        if (!x->is_parent_null() && !x->get_parent()->is_parent_null()) {

            if (x->get_parent() == x->get_parent()->get_parent()->get_left()) {
                //the parent is on the left
                if (!x->get_parent()->get_parent()->is_right_null()) {

                    _RB_NODE<T> *uncle = x->get_parent()->get_parent()->get_rigt();

                    if (uncle->is_red()) {
                        //case 1
                        //in here we have to change the colors of the grandparent, parent and uncle

                        x->get_parent()->make_black();//dad
                        x->get_parent()->get_parent()->get_rigt()->make_black();//uncle
                        x->get_parent()->get_parent()->make_red();//grandpa

                        x = x->get_parent()->get_parent();


                    } else {

                        if (!x->get_parent()->is_right_null() && x == x->get_parent()->get_rigt()) {
                            //X is on the right of his parent
                            //case 2
                            x=x->get_parent();
                            this->left_rotation(x->get_parent());

                        }


                        //case 3

                        x->get_parent()->make_black();//dad
                        x->get_parent()->get_parent()->make_red();//grandpa

                        this->right_rotation(x->get_parent()->get_parent());

                    }


                }


            } else {
                //the parent is on the right
                //do the same as previous but instead of right use left

                if (!x->get_parent()->get_parent()->is_left_null()) {
                    _RB_NODE<T> *uncle = x->get_parent()->get_parent()->get_left();

                    if (uncle->is_red()) {
                        //case 1
                        //in here we have to change the colors of the grandparent, parent and uncle

                        x->get_parent()->make_black();//dad
                        x->get_parent()->get_parent()->get_left()->make_black();//uncle
                        x->get_parent()->get_parent()->make_red();//grandpa

                        x = x->get_parent()->get_parent();


                    } else {
                        if (!x->get_parent()->is_left_null() && x == x->get_parent()->get_left()) {
                            //X is on the right of his parent
                            //case 2
                            x=x->get_parent();
                            this->right_rotation(x->get_parent());

                        }

                        //case 3

                        x->get_parent()->make_black();//dad
                        x->get_parent()->get_parent()->make_red();//grandpa

                        this->left_rotation(x->get_parent()->get_parent());


                    }
                    }


                }


            }


        }


    this->root->make_black();

}


template<class T>

void RB_TREE<T>::set_root(_RB_NODE<T> * root) {
    this->root=root;
    this->root->make_black();
}

template<class T>
void RB_TREE<T>::left_rotation(_RB_NODE<T> * current) {

    if(!current->is_right_null()){

        _RB_NODE<T> *right_aux(current->get_rigt());

        current->set_rigt(right_aux->get_left());

        if(!current->is_right_null()){
              current->get_rigt()->set_parent(current);
        }

        right_aux->set_parent(current->get_parent());

        if(current->is_parent_null()){

            this->set_root(right_aux);//update tree root

        }else if(current==current->get_parent()->get_left()){
            current->get_parent()->set_left(right_aux);
        }else{
            current->get_parent()->set_rigt(right_aux);
        };

        right_aux->set_left(current);

        current->set_parent(right_aux);

    }

}

template<class T>
void RB_TREE<T>::right_rotation(_RB_NODE<T> *current) {
    /*
    For the right rotation, we look at left child of current.
                   (6)                  (3)
                  /  \                 /   \
                (3)   (7)  >>>>>      (2)  (6)
               /  \                        / \
              (2) (4)                    (4) (7)
     */

    if(!current->is_left_null()){
        //if left is not null;

        _RB_NODE<T> *aux(current->get_left());

        current->set_left(aux->get_rigt());

        //update parent
        if(!aux->is_right_null()){
            aux->get_rigt()->set_parent(current);
        }

        aux->set_parent(current->get_parent());

        if(aux->is_parent_null()){
            //this must be the root
            this->set_root(aux);
        }else if(current==current->get_parent()->get_left()){
            //this must be the left tree
            current->get_parent()->set_left(aux);
        }else{
            //this must be the right tree
            current->get_parent()->set_rigt(aux);
        }

        aux->set_rigt(current);
        current->set_parent(aux);

    }


}


template<class T>
std::vector<T> RB_TREE<T>::post_order() {
    std::stack<_RB_NODE<T> *> recursion;
    std::vector<T> ret;


    _RB_NODE<T> *current=this->root;

    do{

        while(!current->is_leaf()){

            if(!current->is_right_null())
                recursion.push(current->get_rigt());
            recursion.push(current);

            current=current->get_left();
        }


        current=recursion.top();
        recursion.pop();

        printf("%c\n",current->get_value());

        if(!current->is_right_null()  && current->get_value()==recursion.top()->get_value()){
            recursion.pop();
            recursion.push(current);
            current=current->get_rigt();
        }else{
            ret.push_back(current->get_value());

        }


    }while(!recursion.empty());


    return ret;
}





template<class T>
std::vector<T> RB_TREE<T>::pre_order() {
    std::stack<_RB_NODE<T> *> manage;
    std::vector<T> ret;

    manage.push(this->root);


    while(!manage.empty()){
        _RB_NODE<T> *current=manage.top();
        manage.pop();

        ret.push_back(current->get_value());

        if(!current->is_right_null()){
            manage.push(current->get_rigt());
        }

        if(!current->is_left_null()){
            manage.push(current->get_left());
        }



    }


    return ret;
}


template<class T>

bool RB_TREE<T>::super_balanced() {
    std::queue < std::pair < _RB_NODE <T>*,int > > nodes;

    nodes.push(std::pair < _RB_NODE <T>*,int >(this->root,0));

    long long int set=0;
    while(!nodes.empty()){
        std::pair < _RB_NODE <T>*,int > visiting=nodes.front();
        nodes.pop();


        if((*visiting.first).is_right_null() && (*visiting.first).is_left_null()) {


            set |= (1 << visiting.second);


            long long copy = set;
            int size;

            for(size=0;copy;copy>>=1){
                size+= copy & 1;
            }

            printf("%d\n",size);

            if(size>2){
                return false;
            }


        }else{
            if(!(*visiting.first).is_right_null()){
                nodes.push(std::pair < _RB_NODE <T>*,int >((*visiting.first).get_rigt(),(visiting.second)+1));
            }

            if(!(*visiting.first).is_left_null()){
                nodes.push(std::pair < _RB_NODE <T>*,int >((*visiting.first).get_left(),(visiting.second)+1));
            }

        }

    }


    return true;

}


template <class T>

T RB_TREE<T>::find_largest(_RB_NODE<T> *current) {
    if(current->is_right_null()){
        return current->get_value();
    }

    return find_largest(current->get_rigt());
};

template<class T>
T RB_TREE<T>::find_second_largest() {
    return this->find_second_largest(this->root);
}

template<class T>
T RB_TREE<T>::find_second_largest(_RB_NODE<T> * current) {

    if(current->is_left_null() && current->is_right_null()){
        //This is in case the tree has only one node.

        return current->get_value();
    }


    if(current->is_right_null() && !current->is_left_null()){

        return find_largest(current->get_left());
    }


    if(current->get_rigt()->is_left_null() && current->get_rigt()->is_right_null()){

        return current->get_value();
    }


    return this->find_second_largest(current->get_rigt());

}




template<class T>
T RB_TREE<T>::sum_leafs_value(_RB_NODE<T> *current,T (*_P_)(T,T),void (*_I_)(T *)){

    T sum;
    _I_(&sum);


    if(current->is_leaf()){
        sum=_P_(sum,current->get_value());
    }else{

        if(current->is_left_null()){
            sum=_P_(sum,sum_leafs_value(current->get_rigt(),_P_,_I_));
        }

        if(current->is_right_null()){
            sum=_P_(sum,sum_leafs_value(current->get_left(),_P_,_I_));
        }
    }

    return sum;
};

template<class T>
T RB_TREE<T>::sum_leafs_value(T (*_P_)(T,T), void (*_I_)(T *)){
    return this->sum_leafs_value(this->root,_P_,_I_);
};

template<class T>
bool RB_TREE<T>::is_full(_RB_NODE<T> *current){


    if(current->is_left_null() && !current->is_right_null()){
        return false;
    }

    if(!current->is_left_null() && current->is_right_null()){
        return false;
    }

    if(current->is_leaf()){
        return true;
    }

    return this->is_full(current->get_left()) && this->is_full(current->get_rigt());

};

template<class T>
bool RB_TREE<T>::is_full(){
    return this->is_full(this->root);
};



template<class T>
RB_TREE<T>::RB_TREE(T rooo){
    this->root=new _RB_NODE<T>();
    this->root->set_value(rooo);
    this->root->make_black();
};

/*INSERT FUNCTION WITH DEFAULT COMPARISON FUNCTION*/
template<class T>
void RB_TREE<T>::insert(_RB_NODE<T> *nodel,T val,int (RB_TREE::*_P_)(T,T)){
    if((this->*_P_)(val,nodel->get_value())){

        if(nodel->is_right_null()){
            _RB_NODE<T> *nodea=new _RB_NODE<T>();

            nodea->set_parent(nodel);
            nodea->set_value(val);
            nodel->set_rigt(nodea);
            this->fix_insertion(nodea);

        }else{
            RB_TREE::insert(nodel->get_rigt(),val,_P_);
        }

    }else{

        if(nodel->is_left_null()){
            _RB_NODE<T> *nodea=new _RB_NODE<T>();
            nodea->set_parent(nodel);
            nodea->set_value(val);
            nodel->set_left(nodea);
            this->fix_insertion(nodea);
        }else{
            RB_TREE::insert(nodel->get_left(),val,_P_);
        }

    }
};

template<class T>
void RB_TREE<T>::insert(T val){
    int (RB_TREE::*aux)(T,T);
    aux=&RB_TREE::T_greater;
    insert(this->root,val,aux);
};


template<class T>
void RB_TREE<T>::insert_iterative(T value) {
    int (RB_TREE::*aux)(T,T);
    aux=&RB_TREE::T_greater;
    insert_iterative(value, aux);

};


template<class T>
void RB_TREE<T>::insert_iterative(T value, int (RB_TREE::*p)(T,T)) {
    _RB_NODE<T> *current=this->root;

    while(!current->is_leaf()){
        if((this->*p)(current->get_value(),value)==1){
            //current is greater than.. node must go to the left
            if(!current->is_left_null()){
                current=current->get_left();
            }else{
                break;
            }
        }else{
            //current is less than node must go to the left
            if(!current->is_right_null()){
                current=current->get_rigt();
            }else{
                break;
            }
        }
    }

    _RB_NODE<T> *neu=new _RB_NODE<T>();
    neu->set_value(value);
    neu->set_parent(current);

    if((this->*p)(current->get_value(),value)==1){
        current->set_left(neu);

    }else{
        current->set_rigt(neu);
    }

    this->fix_insertion(neu);

}

template<class T>
void RB_TREE<T>::insert_iterative(T value, int (*p)(T,T)) {
    _RB_NODE<T> *current=this->root;

    while(!current->is_leaf()){
        if(p(current->get_value(),value)==1){
            //current is greater than.. node must go to the left
            if(!current->is_left_null()){
                current=current->get_left();
            }else{
                break;
            }
        }else{
            //current is less than node must go to the left
            if(!current->is_right_null()){
                current=current->get_rigt();
            }else{
                break;
            }
        }
    }

    _RB_NODE<T> *neu=new _RB_NODE<T>();
    neu->set_value(value);
    neu->set_parent(current);

    if(p(current->get_value(),value)==1){
        current->set_left(neu);

    }else{
        current->set_rigt(neu);
    }

    this->fix_insertion(neu);

}




/*INSERT FUNCTION WITH POINTER TO COMPARISON FUNCTION*/
template<class T>
void RB_TREE<T>::insert(_RB_NODE<T> *nodel,T val,int (*_P_)(T,T)){

    if(_P_(val,nodel->get_value())){

        if(nodel->is_right_null()){
            _RB_NODE<T> *nodea=new _RB_NODE<T>();
            nodea->set_value(val);
            nodea->set_parent(nodel);
            nodel->set_rigt(nodea);
            this->fix_insertion(nodea);
        }else{
            RB_TREE::insert(nodel->get_rigt(),val,_P_);
        }

    }else{
        if(nodel->is_left_null()){
            _RB_NODE<T> *nodea=new _RB_NODE<T>();
            nodea->set_value(val);
            nodea->set_parent(nodel);
            nodel->set_left(nodea);
            this->fix_insertion(nodea);
        }else{
            RB_TREE::insert(nodel->get_left(),val,_P_);
        }
    }
};

template<class T>
void RB_TREE<T>::insert(T val,int (*_P_)(T,T)){
    insert(this->root,val,_P_);
};


template<class T>
void RB_TREE<T>::in_order(_RB_NODE<T> *current,std::vector<T> &res){
    if(!current->is_left_null()){
        RB_TREE::in_order(current->get_left(),res);
    }
    res.push_back(current->get_value());

    if(!current->is_right_null()){
        RB_TREE::in_order(current->get_rigt(),res);
    }
};

template<class T>
std::vector<T> RB_TREE<T>::in_order(){
    std::vector<T> res;
    RB_TREE::in_order(this->root,res);

    return res;
};

