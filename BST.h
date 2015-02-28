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
class _BST_TREE_NODE{

private:	
	T value;	
	_BST_TREE_NODE *left;
	_BST_TREE_NODE *right;
	
public:

	_BST_TREE_NODE(){
		this->left=0x0;
		this->right=0x0;
	};
	
	int is_left_null(){
		return this->left==0x0;
	};
	
	void set_left(_BST_TREE_NODE * ll){
		this->left=ll;
	}
	
	void set_rigt(_BST_TREE_NODE * rr){
		this->right=rr;
	}
	
	
	_BST_TREE_NODE * get_left(){
		return this->left;
	}
	
	_BST_TREE_NODE * get_rigt(){
		return this->right;
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
class BST_TREE{

private:	
	_BST_TREE_NODE<T> *root;
	
	void insert(_BST_TREE_NODE<T>*,T,int (BST_TREE::*p)(T,T));
	void insert(_BST_TREE_NODE<T>*,T,int (*p)(T,T));	
	int T_greater(T a, T b){return a>b;};
	void in_order(_BST_TREE_NODE<T>*,std::vector<T> &);
	bool is_full(_BST_TREE_NODE<T>*);
	T sum_leafs_value(_BST_TREE_NODE<T>*,T(*_P_)(T,T),void (*_I_)(T *));
	T find_second_largest(_BST_TREE_NODE<T>*);
	T find_largest(_BST_TREE_NODE<T>*);
	void insert_iterative(T,int (BST_TREE::*p)(T,T));

public:
	
	BST_TREE(T);
	
	void insert(T value,int (*p)(T,T));	
	void insert(T);
	std::vector<T> in_order();
	std::vector<T> pre_order();
	std::vector<T> post_order();

	bool is_full();
	T sum_leafs_value(T(*_P_)(T,T),void (*_I_)(T *));
	T find_second_largest();
	bool super_balanced();
	void insert_iterative(T);
	void insert_iterative(T,int(*)(T,T));

};



template<class T>
std::vector<T> BST_TREE<T>::post_order() {
	std::stack<_BST_TREE_NODE<T> *> recursion;
	std::vector<T> ret;


	_BST_TREE_NODE<T> *current=this->root;

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
std::vector<T> BST_TREE<T>::pre_order() {
	std::stack<_BST_TREE_NODE<T> *> manage;
	std::vector<T> ret;

	manage.push(this->root);


	while(!manage.empty()){
		_BST_TREE_NODE<T> *current=manage.top();
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

bool BST_TREE<T>::super_balanced() {
	std::queue < std::pair < _BST_TREE_NODE <T>*,int > > nodes;

	nodes.push(std::pair < _BST_TREE_NODE <T>*,int >(this->root,0));

	long long int set=0;
	while(!nodes.empty()){
		std::pair < _BST_TREE_NODE <T>*,int > visiting=nodes.front();
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
				nodes.push(std::pair < _BST_TREE_NODE <T>*,int >((*visiting.first).get_rigt(),(visiting.second)+1));
			}

			if(!(*visiting.first).is_left_null()){
				nodes.push(std::pair < _BST_TREE_NODE <T>*,int >((*visiting.first).get_left(),(visiting.second)+1));
			}

		}



	}





	return true;

}


template <class T>

T BST_TREE<T>::find_largest(_BST_TREE_NODE<T> *current) {
	if(current->is_right_null()){
		return current->get_value();
	}

	return find_largest(current->get_rigt());
};

template<class T>
T BST_TREE<T>::find_second_largest() {
	return this->find_second_largest(this->root);
}

template<class T>
T BST_TREE<T>::find_second_largest(_BST_TREE_NODE<T> * current) {

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
T BST_TREE<T>::sum_leafs_value(_BST_TREE_NODE<T> *current,T (*_P_)(T,T),void (*_I_)(T *)){
	
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
T BST_TREE<T>::sum_leafs_value(T (*_P_)(T,T), void (*_I_)(T *)){
	return this->sum_leafs_value(this->root,_P_,_I_);
};

template<class T>
bool BST_TREE<T>::is_full(_BST_TREE_NODE<T> *current){
	
	
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
bool BST_TREE<T>::is_full(){
	return this->is_full(this->root);
};



template<class T>
BST_TREE<T>::BST_TREE(T rooo){
	this->root=new _BST_TREE_NODE<T>();
	this->root->set_value(rooo);
};

/*INSERT FUNCTION WITH DEFAULT COMPARISON FUNCTION*/
template<class T>
void BST_TREE<T>::insert(_BST_TREE_NODE<T> *nodel,T val,int (BST_TREE::*_P_)(T,T)){
		if((this->*_P_)(val,nodel->get_value())){
		
			if(nodel->is_right_null()){
					_BST_TREE_NODE<T> *nodea=new _BST_TREE_NODE<T>();
					nodea->set_value(val);
					nodel->set_rigt(nodea);
			}else{
				BST_TREE::insert(nodel->get_rigt(),val,_P_);				
			}		
			
	}else{

			if(nodel->is_left_null()){
					_BST_TREE_NODE<T> *nodea=new _BST_TREE_NODE<T>();
					nodea->set_value(val);
					nodel->set_left(nodea);
			}else{
				BST_TREE::insert(nodel->get_left(),val,_P_);				
			}
		
	}
};

template<class T>
void BST_TREE<T>::insert(T val){	
	int (BST_TREE::*aux)(T,T);	
	aux=&BST_TREE::T_greater;	
	insert(this->root,val,aux);
};


template<class T>
void BST_TREE<T>::insert_iterative(T value) {
	int (BST_TREE::*aux)(T,T);
	aux=&BST_TREE::T_greater;
	insert_iterative(value, aux);

};


template<class T>
void BST_TREE<T>::insert_iterative(T value, int (BST_TREE::*p)(T,T)) {
	_BST_TREE_NODE<T> *current=this->root;

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

	_BST_TREE_NODE<T> *neu=new _BST_TREE_NODE<T>();
	neu->set_value(value);

	if((this->*p)(current->get_value(),value)==1){
		current->set_left(neu);

	}else{
		current->set_rigt(neu);
	}
}

template<class T>
void BST_TREE<T>::insert_iterative(T value, int (*p)(T,T)) {
	_BST_TREE_NODE<T> *current=this->root;

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

	_BST_TREE_NODE<T> *neu=new _BST_TREE_NODE<T>();
	neu->set_value(value);

	if(p(current->get_value(),value)==1){
		current->set_left(neu);

	}else{
		current->set_rigt(neu);
	}


}




/*INSERT FUNCTION WITH POINTER TO COMPARISON FUNCTION*/
template<class T>
void BST_TREE<T>::insert(_BST_TREE_NODE<T> *nodel,T val,int (*_P_)(T,T)){
	
	if(_P_(val,nodel->get_value())){
		
			if(nodel->is_right_null()){
					_BST_TREE_NODE<T> *nodea=new _BST_TREE_NODE<T>();
					nodea->set_value(val);
					nodel->set_rigt(nodea);
			}else{
				BST_TREE::insert(nodel->get_rigt(),val,_P_);				
			}		
			
	}else{
			if(nodel->is_left_null()){
					_BST_TREE_NODE<T> *nodea=new _BST_TREE_NODE<T>();
					nodea->set_value(val);
					nodel->set_left(nodea);
			}else{
				BST_TREE::insert(nodel->get_left(),val,_P_);				
			}
	}
};

template<class T>
void BST_TREE<T>::insert(T val,int (*_P_)(T,T)){		
	insert(this->root,val,_P_);
};


template<class T>
void BST_TREE<T>::in_order(_BST_TREE_NODE<T> *current,std::vector<T> &res){
	if(!current->is_left_null()){
		BST_TREE::in_order(current->get_left(),res);
	}	
		res.push_back(current->get_value());
	
	if(!current->is_right_null()){
		BST_TREE::in_order(current->get_rigt(),res);
	}
};

template<class T>
std::vector<T> BST_TREE<T>::in_order(){
	std::vector<T> res;
	BST_TREE::in_order(this->root,res);

	return res;
};


int greater(int a, int b){
	return a>b;
};


void init(int *val){
	*val=0;
};

int sum(int a, int b){
	return a+b;
}


