#Felix Völker und Konstantin Wehrwein

## Author:  <Felix Völker>
## Created: 2016-05-23


#@param N, amount of T matrices (ref exercise)
#@return value is newly created required sparse matix
function [A] = make_sparseM (N)

    #actual size of A
    n = N**2;
    #"allocating" possible entries
    A = sparse(n,n);
    
    #this for-loop writes the T's in A
    for T = 0:N:n-1
        for i = T+1:T+N-1
            A(i,i)=4;
            A(i,i+1)=A(i+1,i)=-1;
        endfor
        A(T+N,T+N)=4;
    endfor
    
    #this for-loop writes the negative identity matrices into A
    for i = 1:n-N
        A(i,i+N)=A(i+N,i)=-1;
     endfor
endfunction


##this function can be tested with spy(A) and full(A)