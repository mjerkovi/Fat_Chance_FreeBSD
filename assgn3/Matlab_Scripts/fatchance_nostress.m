function z = fatchance_nostress()

clear all;
clc;
filename = 'fatchance_nostress.csv';
M = csvread(filename);

%variable declarations

M = M';
size_M = size(M);



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


for i=1:1:size_M(2)
    
   %Pages in active queue = 1
   if(M(1,i) == 1)
      x1(c1) = M(2,i);
      c1 = c1 + 1;
   %Pages in inactive queue = 2    
   elseif(M(1,i) == 2)
      x2(c2) = M(2,i);
      c2 = c2 + 1;
   %Inactive moved to cache = 3
   elseif(M(1,i) == 3)
      x3(c3) = M(2,i);
      c3 = c3 + 1;
   %Inactive moved to free = 4
   elseif(M(1,i) == 4)
      x4(c4) = M(2,i);
      c4 = c4 + 1;
   %Pages queued for flushing = 5
   elseif(M(1,i) == 5)
      x5(c5) = M(2,i);
      c5 = c5 + 1;
   %Active Pages Moved to Inactive
   elseif(M(1,i) == 6)
      x6(c6) = M(2,i);
      c6 = c6 + 1; 
   %Total Pages Scanned
   elseif(M(1,i) == 7)
      x7(c7) = M(2,i);
      c7 = c7 + 1; 
   %Active Pages Scanned    
   elseif(M(1,i) == 8)
      x8(c8) = M(2,i);
      c8 = c8 + 1;
   %Inactive Pages Scanned
   elseif(M(1,i) == 9)
      x9(c9) = M(2,i);
      c9 = c9 + 1; 
   %Queues Scanned
   elseif(M(1,i) == 10)
      x10(c10) = M(2,i);
      c10 = c10 + 1;  
   end
   
end

%Create a variable that represents total number of scans
numScans = [1:1:length(x1)];


figure(1)
plot(numScans, x1, '-ro');
hold on;
grid on;
plot(numScans, x2, '-bo');
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Number of Pages in Inactive Queue vs Active Queue');
legend('Active', 'Inactive', 'Location', 'southeast');

figure(2)
plot(numScans, x3, '-ro');
hold on;
grid on;
plot(numScans, x4, '-bo');
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Inactive Pages Moved to Cached vs. Free');
legend('Cached', 'Free', 'Location', 'northeast');


figure(3)
plot(numScans, x5, '-bo');
grid on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Pages Queued for Flushing Per Scan');

figure(4)
plot(numScans, x6, '-bo');
grid on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Active Pages Moved to Inactive Per Scan');

figure(5)
plot(numScans, x7, '-bo');
grid on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Total Pages Scanned');

figure(6)
plot(numScans, x8, '-ro');
hold on;
plot(numScans, x9, '-bo');
hold on;
xlabel('Each Scan Performed');
ylabel('Number of Pages');
title('Number of Active Pages Scanned vs Inactive');
legend('Active', 'Inactive', 'Location', 'northwest');
grid on;




end


