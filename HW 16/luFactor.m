function [L, U, P] = luFactor(A)
%created on: 10-24-19
%created by: Nick Krekeler
%last motified: 10-29-19

%luFactor(A)
%    LU decomposition with pivoting
%Inputs:
%   A = coefficient matix
%Outputs:
%   L = lower triangular matrix
%   U = upper triangular matrix
%   P = the permutation matrix

%Check for a valid matrix
[m, n] = size(A);
if m~=n
    error('Matrix A must be square'); 
end

%Check correct output sizes and check matrices L and U are triangular

%   lower triangular matrix
        L = zeros(n);     

%   upper triangular matrix
        U = A;

%Check the permutation matrix P is valid
        P = eye(n);
        
%Forward Elimination 
for k = 1:m-1
    %Partial Pivoting
    [~, i] = max(abs(U(k:m,k)));
    ipr = i+k-1;
    if ipr~=k
      
        %Must store these values to replace it for pivoting for Matrix U  
        temp1 = U(k,:); 
        temp2 = U(ipr,:);
            U(ipr,:) = temp1
            U(k,:) = temp2
        %Must store these values to replace it for pivoting for Matrix P
        temp1 = P(k,:); 
        temp2 = P(ipr,:);
            P(ipr,:) = temp1
            P(k,:) = temp2
        %Must store these values to replace it for pivoting for Matrix L   
        temp1 = L(k,:); 
        temp2 = L(ipr,:);
            L(ipr,:) = temp1
            L(k,:) = temp2   
            
    end
    for i = k+1:m
        L(i,k) = U(i,k)/U(k,k);
        U(i,k:m)=U(i,k:m)-L(i,k)*U(k,k:m);
    end
end

%Adding in the 1's in the diaganol for Matrix L
L = L + eye(n);

%Check Solution for Simple Matrix
P
A
L
U
%   [P]*[A] = [L]*[U]    %Is this true?

Left = P*A;
Right = L*U;

Check = Left - Right