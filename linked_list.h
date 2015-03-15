/*
 * linked_list.cxx
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */
 
#include <iostream>
#include <cstdio>

template<class T>
class node{
	
	T value;

public:
	node(){
		this->next=0x0;
		this->prev=0x0;
	};
	
	T get_value(){
		return this->value;
	};
	
	void set_value(T val){
		this->value=val;
	};
	
	node *next;
	node *prev;
};

template<class T>
class linked_list{

private:
	
	node<T> *head;
	node<T> *back;

	int tam;

public:
	
	linked_list();
	void push_back(T);
	void print();
	void print_back();
	T operator[](int pos);
	int size();
	unsigned int contains(T lup,int (*p)(T, T));

	T mToLastElement(int );
	
	
};

template<class T>
linked_list<T>::linked_list(){
	this->head=new node<T>();
	this->back=new node<T>();
	this->tam=0;
};


template<class T>
T linked_list<T>::mToLastElement(int m) {

	if(m>this->size()){
		throw "Out of bouns exception";
	}


	node<T> *front=this->head,*mpointer=this->head;


	while(m-- && mpointer->next !=0x0){
		mpointer=mpointer->next;
	}


	while(mpointer->next !=0x0){
		mpointer=mpointer->next;
		front=front->next;
	}

	front=front->next;

	return front->get_value();

}






template<class T>
unsigned int linked_list<T>::contains(T lup,int (*_equ_fun)(T, T)){
	node<T> *aux=this->head;				
	int ret=0;
	
	while(aux->next != 0x0 && ret==0){		
		aux=aux->next;
		ret=_equ_fun(lup,aux->get_value());
	};
	
	return ret;
	
};


template<class T>
int linked_list<T>::size(){	
	return this->tam;
};


template<class T>
T linked_list<T>::operator[](int pos){
	node<T> *aux=this->head;				
	
	T ret;
	while(aux->next != 0x0 && pos>=0){		
		aux=aux->next;
		ret=aux->get_value();
		pos--;
	};
	
	return ret;
}

template<class T>
void linked_list<T>::push_back(T val){
	
	node<T> *nuevo=new node<T>();
	nuevo->set_value(val);
	
	if(this->head->next==0x0){
		
		//this deals with the head;
		this->head->next=nuevo;
		nuevo->prev=this->head;
		
		
		//this deals with the back		
		this->back->prev=nuevo;
		nuevo->next=this->back;
		
		this->tam++;
		
	}else{
		
		this->back->prev->next=nuevo;
		nuevo->prev=this->back->prev;
		this->back->prev=nuevo;
		
		this->tam++;
		
	}
	
};

template<class T>
void linked_list<T>::print_back(){
	node<T> *aux=this->back;			
	
	while(aux->prev != 0x0){				
		aux=aux->prev;
		printf("%d ",aux->get_value());
	};	
	
};

template<class T>
void linked_list<T>::print(){
	node<T> *aux=this->head;				
	while(aux->next != 0x0){				
		aux=aux->next;
		printf("%d ",aux->get_value());						
		
	};
};



