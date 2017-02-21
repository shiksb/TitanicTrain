% displays general statistics about the data set. 

survived = [ train{:,2} ];
sex = [ train{:,5} ];
ages = [ train{:,6} ];
fare = [ train{:,10} ];

males = 0;
females = 0;
none = 0;

for c = 1:891
    if strcmp(train{c,5},'male')
        males = males + 1;
    elseif strcmp(train{c,5},'female')
        females = females + 1;
    else 
        none = none + 1;
    end
end

disp('7a) number of males are:');
disp(males);
disp('number of females are: ');
disp(females);
disp('number of people with no gender given: ');
disp(none);


disp('7b) Mean fare is: ');
disp(mean(fare));


disp('7c) Number of people who survived: ');
survived = 0;
died = 0;

for c = 1:891
    if train{c,2} == 0
        died = died + 1;
    elseif train{c,2} == 1
        survived = survived + 1;
    end
end

disp(survived);

disp('number of people who died: ');
disp(died);



m_survived = 0;
f_survived = 0;

for c = 1:891
    if train{c,2} == 1
        if strcmp(train{c,5},'male')
            m_survived = m_survived + 1;
        elseif strcmp(train{c,5},'female')
            f_survived = f_survived + 1;
        end
    end
end

ages2 = ages;
ages(isnan(ages)) = [];
ages2(isnan(ages2)) = mean(ages);

count = 0;
sum_num = 0;
for c = 1:891
    if train{c,2} == 1
        count = count + 1;
        if isnan(train{c,6}) == 1
            sum_num = sum_num + mean(ages);
        else 
            sum_num = sum_num + train{c,6};
        end
    end
end

avg_age = sum_num/count;
disp('7d) Average age of survivors');
disp(avg_age);

disp('7e) Number of males who survived: ');
disp(m_survived);
disp('Number of females who survived: ');
disp(f_survived);
