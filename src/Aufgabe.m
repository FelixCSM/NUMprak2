# Aufgabe nach U_3_Praxis.pdf
# Felix Völker und Konstantin Wehrwein

clear all;

n_max = 1000;
N = 100;
tol = 10**(-12);
A = make_sparseM(N);
b = get_b(N);

x_0 = sparse(zeros(N**2,1));
altx = get_alt_x(N);


## a) ##
[x,k] = cg_verf(A, b, x_0, tol, n_max);
disp("CG-Verharen brauchte mit x=0 folgende Anzahl an iterationen")
disp(k)

[x,k] = cg_verf(A, b, altx, tol, n_max);
disp("CG-Verharen brauchte mit angepasstem x folgende Anzahl an iterationen")
disp(k)


## b) ##

[x,k] = vorkon_cg (x_0,A, A,b,tol,n_max);
disp("Konditioniertes CG-Verharen brauchte mit x=0 folgende Anzahl an iterationen")
disp(k)

[x,k] = vorkon_cg (altx,A, A,b,tol,n_max);
disp("Konditioniertes CG-Verharen brauchte mit angepasstem x folgende Anzahl an iterationen")
disp(k)
