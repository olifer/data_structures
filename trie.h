


#include <map>
#include <algorithm>
#include <iostream>
#include <string.h>
#include <cstdio>
#include <ostream>




template <class T>
class _TRIE_NODE_{

private:

    T value;

    std::map<T,_TRIE_NODE_> nodes;

public:

    /*
        TYPENAMES FOR EASY SEAHC

     */


    void set_map(std::map<T,_TRIE_NODE_> neu){
        this->nodes=neu;
    }

    typedef typename std::map<T,_TRIE_NODE_ >::iterator NODES_ITERATOR;


    void set_value(T valuye){
        this->value=valuye;
    }

    T get_value(){return this->value;}

    unsigned int is_leaf(){
        return this->nodes.size()==0;
    }


    NODES_ITERATOR contains(T value){

        return this->nodes.find(value);
    }


    _TRIE_NODE_::NODES_ITERATOR end(){
      return this->nodes.end();
    };

    _TRIE_NODE_::NODES_ITERATOR begin(){
        return this->nodes.begin();
    };

    void add(T value){
        _TRIE_NODE_<T> neu;

        neu.set_value(value);

        std::map<T,_TRIE_NODE_> nodes;
        neu.set_map(nodes);


        this->nodes.insert(std::pair<T,_TRIE_NODE_ >(value,neu));
    }


};



template < class T >
class trie{

private:
    _TRIE_NODE_<T> root;
    void insert(_TRIE_NODE_<T>*,T *,int pos);
    bool contains(_TRIE_NODE_<T>,T *,int pos);
    std::ostream& print(_TRIE_NODE_<T>,std::ostream &);

public:
    _TRIE_NODE_<T> get_root();
    void insert(T *node);
    bool contains(T *look);
    std::ostream& print(std::ostream &out);

    trie(){
        std::map<T,_TRIE_NODE_<T> > nodes;
        root.set_map(nodes);

    }


};

template <class T>
bool trie<T>::contains(_TRIE_NODE_<T> current, T *value_array, int pos) {
    int size= strlen(value_array);

    if(pos<size) {

        if (current.is_leaf()) {

            if(pos==(size)){
                return true;
            }else{
                return false;
            }

        } else {
            T aux = value_array[pos];
            typename std::map<T, _TRIE_NODE_<T> >::iterator where = current.contains(aux);

            if (where == current.end()) {
                //we reach a node that does not contain the letters
                return false;
            } else {

                int nespos=pos+1;

                return contains((*where).second,value_array,nespos);

            }
        }

    }else if(pos==size) {
        return true;
    }else{

        return false;
    };
};

template <class T>
bool trie<T>::contains(T *value_array) {
    return this->contains(this->root, value_array, 0);
}

template<class T>
_TRIE_NODE_<T> trie<T>::get_root() {
    return this->root;
};

template <class T>
void trie<T>::insert(_TRIE_NODE_<T> *current, T *value_array, int pos) {
    int size= sizeof(value_array)/ sizeof(T);

    if(pos<strlen(value_array)){

        T aux=value_array[pos];

        typename std::map<T,_TRIE_NODE_<T> >::iterator  where=current->contains(aux);

        if(where==current->end()){
                //the first leter was not found in the root, lets insert it and keep going
            current->add(aux);

            where=current->contains(aux);
        }

        int nespos=pos+1;

        this->insert(&(*where).second, value_array, nespos);

    }


};

template <class T>
std::ostream& trie<T>::print(_TRIE_NODE_<T> current,std::ostream & out) {

    if(!current.is_leaf()){
        //only traverse the trie if its not a leaf

        out<<current.get_value()<<" ";

        typename std::map<T,_TRIE_NODE_<T> >::iterator  iter=current.begin();
		
		
        for(;iter!=current.end();iter++){
            print((*iter).second, out);
        }
		


    }

    return out;
}

template <class T>
std::ostream& trie<T>::print(std::ostream &out) {
    this->print(this->root,out);
    return out;
}

template <class T>
void trie<T>::insert(T *value_array) {
        this->insert(&this->root, value_array,0);
};









