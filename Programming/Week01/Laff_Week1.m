x = [
1 
2 
3
];

y = [
0 
-1 
-2
];

z = [
4
3
2
1
];

x_old = x;
y_old = y;
z_old = z;

for i=1:3
  y(i) = x(i)
end

y = y_old;
y = laff_copy(x, y);

y = y_old';
y = laff_copy(x, y);

x_row = x';
y = y_old;
y = laff_copy(x_row, y);

z = z_old;
z = laff_copy(x, z);