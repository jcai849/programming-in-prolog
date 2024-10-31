pilots(A,london) = pilots(london,paris) /*  fail */
point(X,Y,Z) = point(X1,Y1,Z1) /* X=X1, Y=Y1, Z=Z1 (all co-reference) */
letter(C) = word(letter) /* fail */
noun(alpha) = alpha /* fail */
'student' = student /* true */
f(X,X) = f(a,b) /* fail */
f(X, a(b,c)) = f(Z, a(Z,c)) /* Z=b, X=Z (co-reference) */
