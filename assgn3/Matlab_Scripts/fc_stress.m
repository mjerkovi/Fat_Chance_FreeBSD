function z = fc_stress()

clear all;
clc;
filename = 'fc_stress.csv';
M = csvread(filename);

%variable declarations
M;
M = M';
size_M = size(M)



c1 = 1;
c2 = 1;
c3 = 1;
c4 = 1;
c5 = 1;
c6 = 1;
c7 = 1;
c8 = 1;
c9 = 1;
c10 = 1;

a1 = 0;

for i=1:1:size_M(2)
    
    if(M(1,i) == 1)
        a1 = a1 + 1;
    end
    
    if(mod(a1,2) == 0 && M(2,i-1) == 10)
              x1(c1) = pi;
              x2(c2) = pi;
              x3(c3) = pi;
              x4(c4) = pi;
              x5(c5) = pi;
              x6(c6) = pi;
              x7(c7) = pi;
              x8(c8) = pi;
              x9(c9) = pi;
              x10(c10) = pi;
              
              c1 = c1 + 1;
              c2 = c2 + 1;
              c3 = c3 + 1;
              c4 = c4 + 1;
              c5 = c5 + 1;
              c6 = c6 + 1;
              c7 = c7 + 1;
              c8 = c8 + 1;
              c9 = c9 + 1;
              c10 = c10 + 1;
    else   
           %Pages in active queue = 1
           if(M(2,i) == 1)
              x1(c1) = M(3,i);
              c1 = c1 + 1;
           %Pages in inactive queue = 2    
           elseif(M(2,i) == 2)
              x2(c2) = M(3,i);
              c2 = c2 + 1;
           %Inactive moved to cache = 3
           elseif(M(2,i) == 3)
              x3(c3) = M(3,i);
              c3 = c3 + 1;
           %Inactive moved to free = 4
           elseif(M(2,i) == 4)
              x4(c4) = M(3,i);
              c4 = c4 + 1;
           %Pages queued for flushing = 5
           elseif(M(2,i) == 5)
              x5(c5) = M(3,i);
              c5 = c5 + 1;
           %Active Pages Moved to Inactive
           elseif(M(2,i) == 6)
              x6(c6) = M(3,i);
              c6 = c6 + 1; 
           %Total Pages Scanned
           elseif(M(2,i) == 7)
              x7(c7) = M(3,i);
              c7 = c7 + 1; 
           %Active Pages Scanned    
           elseif(M(2,i) == 8)
              x8(c8) = M(3,i);
              c8 = c8 + 1;
           %Inactive Pages Scanned
           elseif(M(2,i) == 9)
              x9(c9) = M(3,i);
              c9 = c9 + 1; 
           %Queues Scanned
           elseif(M(2,i) == 10)
              x10(c10) = M(3,i);
              c10 = c10 + 1;  
       end
    end
  
end
x3(8130:8134)
l1 = length(x1);
l2 = length(x2);
l3 = length(x3);
l4 = length(x4);
l5 = length(x5);
l6 = length(x6);
l7 = length(x7);
l8 = length(x8);
l9 = length(x9);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l1
    r_length= r_length + 1;
    if(x1(i) == pi)
        r1(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r1
%Get avaerage scans per run
avg_scans = round(mean(r1))



%Obtain positions of delimiters
k=1;
for i=1:1:l1
    if(x1(i) == pi)
        pos(k) = i;
        k = k+1;
    end
end


%Turn x1 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l1
    if(i~= pos(k))
        y1(k,j) = x1(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y1=y1';
y1 = mean(y1,2);
y1 = y1';




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l2
    r_length= r_length + 1;
    if(x2(i) == pi)
        r2(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r2
%Get avaerage scans per run
avg_scans2 = round(mean(r2))





%Turn x2 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l1
    if(i~= pos(k))
        y2(k,j) = x2(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y2=y2';
y2 = mean(y2,2);
y2 = y2';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l3
    r_length= r_length + 1;
    if(x3(i) == pi)
        r3(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r3
%Get avaerage scans per run
avg_scans3 = round(mean(r3))



%Turn x3 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l3
    if(i~= pos(k))
        y3(k,j) = x3(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y3=y3';
y3 = mean(y3,2);
y3 = y3';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l4
    r_length= r_length + 1;
    if(x2(i) == pi)
        r4(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r4
%Get avaerage scans per run
avg_scans4 = round(mean(r4))



%Turn x1 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l4
    if(i~= pos(k))
        y4(k,j) = x4(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y4=y4';
y4 = mean(y4,2);
y4 = y4';



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l5
    r_length= r_length + 1;
    if(x5(i) == pi)
        r5(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r5
%Get avaerage scans per run
avg_scans5 = round(mean(r5))



%Turn x5 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l5
    if(i~= pos(k))
        y5(k,j) = x5(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y5=y5';
y5 = mean(y5,2);
y5 = y5';
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l6
    r_length= r_length + 1;
    if(x6(i) == pi)
        r6(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r6
%Get avaerage scans per run
avg_scans6 = round(mean(r6))




%Turn x6 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l6
    if(i~= pos(k))
        y6(k,j) = x6(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y6=y6';
y6 = mean(y6,2);
y6 = y6';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X7
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l7
    r_length= r_length + 1;
    if(x7(i) == pi)
        r7(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r7
%Get avaerage scans per run
avg_scans7 = round(mean(r7))




%Turn x7 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l7
    if(i~= pos(k))
        y7(k,j) = x7(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y7=y7';
y7 = mean(y7,2);
y7 = y7';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l8
    r_length= r_length + 1;
    if(x8(i) == pi)
        r8(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r8
%Get avaerage scans per run
avg_scans8 = round(mean(r2))



%Turn x1 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l8
    if(i~= pos(k))
        y8(k,j) = x8(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y8=y8';
y8 = mean(y8,2);
y8 = y8';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HANDLE X9
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=1;
r_length=0;
%Retreive length of every run
for i=1:1:l9
    r_length= r_length + 1;
    if(x9(i) == pi)
        r9(k) = r_length - 1;
        k = k+1;
        r_length = 0;
    end
end

r9
%Get avaerage scans per run
avg_scans9 = round(mean(r9))



%Turn x9 into a Matrix where each row is a run
%When a delimiter is detected, create new row
k=1;
j=1;
for i=1:1:l9
    if(i~= pos(k))
        y9(k,j) = x9(i);
        j=j+1;
    elseif(i == pos(k))
        j=1;
        k = k+1;
    end
end

y9=y9';
y9 = mean(y9,2);
y9 = y9';


%The y-axis represents the average of every piece of data per scan from 20
%runs collected

%The x-axis represents the average amount of scans that occurred per run

 %Create a variable that represents total number of scans
 numScans = [1:1:avg_scans];
 
 
figure(1)
plot(numScans, y1(1:avg_scans), '-ro');
hold on;
grid on;
plot(numScans, y2(1:avg_scans), '-bo');
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Number of Pages in Inactive Queue vs Active Queue');
legend('Active', 'Inactive', 'Location', 'west');

 numScans = [1:1:avg_scans4];

figure(2)
plot(numScans, y3(1:avg_scans4), '-ro');
hold on;
grid on;
plot(numScans, y4(1:avg_scans4), '-bo');
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Inactive Pages Moved to Cached vs. Free');
legend('Cached', 'Free', 'Location', 'southeast');

 numScans = [1:1:avg_scans];

figure(3)
plot(numScans, y5(1:avg_scans), '-bo');
grid on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Pages Queued for Flushing Per Scan');

figure(4)
plot(numScans, y6(1:avg_scans), '-bo');
grid on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Active Pages Moved to Inactive Per Scan');

figure(5)
plot(numScans, y7(1:avg_scans), '-bo');
grid on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Total Pages Scanned');

figure(6)
plot(numScans, y8(1:avg_scans), '-ro');
hold on;
plot(numScans, y9(1:avg_scans), '-bo');
hold on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Number of Active Pages Scanned vs Inactive');
legend('Active', 'Inactive', 'Location', 'northeast');
grid on;



end