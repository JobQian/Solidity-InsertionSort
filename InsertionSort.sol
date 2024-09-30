function insertionSort(uint[] memory a) public pure returns(uint[] memory) {
    // note that uint can not take negative value 
    //下面这样处理不会取到负值 j不会等于-1
    for (uint i = 1;i < a.length;i++){
        uint temp = a[i];
        uint j=i;
        //Here, when the j loop reaches j = 0, it will break out and j will not continue to decrement to - 1. In Solidity, uint (unsigned integer) cannot take negative values. 
        //Once it is assigned a negative value, an error will be reported.
        //此处j循环到j=0的时候跳出j不会继续减到-1，在Solidity中uint是无符号整数，不能取负值，一旦赋值为负值会报错
        while( (j >= 1) && (temp < a[j-1])){
            a[j] = a[j-1];
            j--;
        }
        a[j] = temp;
    }
    return(a);
}
