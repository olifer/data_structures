

#include <vector>

template<class T>
class heap{

private:
    std::vector<T> inner;
    void heapfy(int index);
    void heapfy(int index,unsigned int (*CD)(T,T));
    int get_father(int index);
    int get_left_pos(int index);
    int get_right_pos(int index);
    bool has_left(int index);
    bool has_right(int index);
    void heapfydown(int index);


public:
    void insert(T data);
    void insert(T data,unsigned int (*CD)(T,T));
    void remove();
    T peek();
};

template<class T>
void heap<T>::insert(T data, unsigned int (*CD)(T, T)) {
    this->inner.push_back(data);
    this->heapfy(this->inner.size()-1,CD);
}

template<class T>
void heap<T>::heapfy(int index,unsigned int (*CD)(T, T)) {
    if(index!=0){
        int parent=this->get_father(index);
        if(CD(this->inner[parent],this->inner[index])==1){
            T aux=this->inner[parent];
            this->inner[parent]=this->inner[index];
            this->inner[index]=aux;
            heapfy(parent);
        }
    }

}

template<class T>
void heap<T>::remove() {
    this->inner[0]=this->inner[this->inner.size()-1];
    this->inner.erase(this->inner.end()-1);
    this->heapfydown(0);

}

template<class T>
void heap<T>::heapfydown(int index) {

    int min_index;
    if(!this->has_right(index)){
        if(!this->has_left(index)){
            //it does not have any child
            return;
        }else{
            min_index=this->get_left_pos(index);
        }

    }else{
        //since it has a right child it must hasa a left child.
        int left=this->get_left_pos(index),right=this->get_right_pos(index);

        if(this->inner[left]<=this->inner[right]){
            min_index=left;
        }else{
            min_index=right;
        }
    }

    //lets test if the parent node is greater than the min index node
    if(this->inner[index]> this->inner[min_index]){

        //the heap property is broekn, lets move thins arround
        T temp=this->inner[index];
        this->inner[index]=this->inner[min_index];
        this->inner[min_index]=temp;
        this->heapfy(min_index);
    }



}



template <class T>
T heap<T>::peek() {
    return this->inner[0];
}


template <class T>
void heap<T>::insert(T data) {

    this->inner.push_back(data);
    this->heapfy(this->inner.size()-1);
}


template<class T>
void heap<T>::heapfy(int index) {

    if(index!=0){
        int parent=this->get_father(index);
        if(this->inner[parent]>this->inner[index]){
            T aux=this->inner[parent];
            this->inner[parent]=this->inner[index];
            this->inner[index]=aux;
            heapfy(parent);
        }
    }

}



template<class T>
bool heap<T>::has_left(int index) {
    return this->get_left_pos(index) < this->inner.size();
}

template<class T>
bool heap<T>::has_right(int index) {
    return this->get_right_pos(index)<this->inner.size();
}

template<class T>
int heap<T>::get_left_pos(int index) {
    return (index * 2) +1;
}

template<class T>
int heap<T>::get_right_pos(int index) {
    return (index * 2) +2;
}


template<class T>
int heap<T>::get_father(int index) {
    /*
    * This equation make that the right child is on the .5 of the division and the left child
    * is on the perfect division index.
    */

    return (index - 1) /2;
}









