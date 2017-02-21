% displays how many entries are missing in every field

survived = [ train{:,2} ];
pclass = [ train{:,3} ];
sex = [ train{:,5} ];
ages = [ train{:,6} ];
subsp = [ train{:,7} ];
parch = [ train{:,8} ];
fare = [ train{:,10} ];
embarked = [ train{:,12} ];

disp('Missing data for: ');
disp('survived: ');
disp(sum(isnan(survived)));
disp('pclass: ');
disp(sum(isnan(pclass)));
disp('sex: ');
disp(sum(isnan(sex)));
disp('ages: ');
disp(sum(isnan(ages)));
disp('subsp: ');
disp(sum(isnan(subsp)));
disp('parch: ');
disp(sum(isnan(parch)));
disp('fare: ');
disp(sum(isnan(fare)));
disp('embarked: ');
disp(sum(isnan(embarked)));