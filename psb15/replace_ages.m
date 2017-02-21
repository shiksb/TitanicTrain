% Replaces the missing ages with the average age

ages = [ train{:,6} ];

ages2 = ages;
ages(isnan(ages)) = [];

disp('average age after replacement is ');
ages2(isnan(ages2)) = mean(ages);
disp(mean(ages2));
ages = ages2;