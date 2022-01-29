function beginnertrack

T = readtable('track.csv');
Gender = table2array(T(1:end,10));
Accepted = table2array(T(1:end,37));
Race = table2array(T(1:end,8));
Denial_Reason_Table = table2array(T(1:end,38));
Ethnicity = table2array(T(1:end,9));
DebtToIncome = table2array(T(1:end,12));
Race_Categories = {'White'; 'Asian';'Black or African American';
                   'Native Hawaiian or Other Pacific Islander';
                   'American Indian or Alaska Native'};
figure(1)
piechart(Denial_Reason_Table)
figure(2)
heatmapreason(Ethnicity,Accepted,Race,Denial_Reason_Table,Race_Categories)
figure(3)
heatmapdebt(Ethnicity,Accepted,Race,DebtToIncome,Race_Categories)
end

function heatmapdebt(Ethnicity,Accepted,Race,DebtToIncome,Race_Categories)
DebttoIncomeRange = {'<20%';'20%-<30%';'30%-<36%';'36%-<41%';'41%-<46%';'46%-<50%';'50%-60%';'>60%'};                   
cdata = zeros(6,8);
for i = 1:length(Race)
    
    if string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(1)
        cdata(1,1) = cdata(1,1)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(2)
        cdata(1,2) = cdata(1,2)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(3)
        cdata(1,3) = cdata(1,3)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(4)
        cdata(1,4) = cdata(1,4)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(5)
        cdata(1,5) = cdata(1,5)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(6)
        cdata(1,6) = cdata(1,6)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(7)
        cdata(1,7) = cdata(1,7)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(8)
        cdata(1,8) = cdata(1,8)+1;    
        
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(1)
        cdata(2,1) = cdata(2,1)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(2)
        cdata(2,2) = cdata(2,2)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(3)
        cdata(2,3) = cdata(2,3)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(4)
        cdata(2,4) = cdata(2,4)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(5)
        cdata(2,5) = cdata(2,5)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(6)
        cdata(2,6) = cdata(2,6)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(7)
        cdata(2,7) = cdata(2,7)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(8)
        cdata(2,8) = cdata(2,8)+1;       
    end    
        for n = 3:length(Race_Categories)+1
            if string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(1)
                cdata(n,1) = cdata(n,1)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(2)
                cdata(n,2) = cdata(n,2)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(3)
                cdata(n,3) = cdata(n,3)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(4)
                cdata(n,4) = cdata(n,4)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(5)
                cdata(n,5) = cdata(n,5)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(6)
                cdata(n,6) = cdata(n,6)+1;    
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(7)
                cdata(n,7) = cdata(n,7)+1;    
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(DebtToIncome(i)) == DebttoIncomeRange(8)
                cdata(n,8) = cdata(n,8)+1; 
            end
        end
         

end
count = [38622,56081,13434,18486,315,1125];
for i = 1:length(count)
    cdata(i,:) = cdata(i,:)./count(i).*100;
end
xvalues = DebttoIncomeRange;
yvalues = {'White and Hispanic'; 'White and not Hispanic';
           'Asian';'Black or African American';
           'Native Hawaiian or Other Pacific Islander';
           'American Indian or Alaska Native'};
h = heatmap(xvalues,yvalues,cdata);
h.Title = 'Heat Map Distribution of Loan Rejection Rate Separated by Race/Ethnicity and Debt to Income Ratio Over the Total Population';
h.XLabel = 'Debt to Income Ratio';
h.YLabel = 'Race/Ethnicity';
h.CellLabelFormat ='%.2f %%';

end

function heatmapreason(Ethnicity,Accepted,Race,Denial_Reason_Table,Race_Categories)
%Heatmap
cdata = zeros(6,8);
for i = 1:length(Race)
    
    if string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Other'
        cdata(1,1) = cdata(1,1)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Debt-to-income ratio'
        cdata(1,2) = cdata(1,2)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Credit application incomplete'
        cdata(1,3) = cdata(1,3)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Collateral'
        cdata(1,4) = cdata(1,4)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Unverifiable information'
        cdata(1,5) = cdata(1,5)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Credit history'
        cdata(1,6) = cdata(1,6)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Insufficient cash (downpayment, closing costs)'
        cdata(1,7) = cdata(1,7)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Employment history'
        cdata(1,8) = cdata(1,8)+1;    
        
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Other'
        cdata(2,1) = cdata(2,1)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Debt-to-income ratio'
        cdata(2,2) = cdata(2,2)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Credit application incomplete'
        cdata(2,3) = cdata(2,3)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Collateral'
        cdata(2,4) = cdata(2,4)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Unverifiable information'
        cdata(2,5) = cdata(2,5)+1;
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Credit history'
        cdata(2,6) = cdata(2,6)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Insufficient cash (downpayment, closing costs)'
        cdata(2,7) = cdata(2,7)+1;    
    elseif string(Race(i)) == 'White' && string(Ethnicity(i)) == 'Not Hispanic or Latino' && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Employment history'
        cdata(2,8) = cdata(2,8)+1;       
    end    
        for n = 3:length(Race_Categories)+1
            if string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Other'
                cdata(n,1) = cdata(n,1)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Debt-to-income ratio'
                cdata(n,2) = cdata(n,2)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Credit application incomplete'
                cdata(n,3) = cdata(n,3)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Collateral'
                cdata(n,4) = cdata(n,4)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Unverifiable information'
                cdata(n,5) = cdata(n,5)+1;
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Credit history'
                cdata(n,6) = cdata(n,6)+1;    
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Insufficient cash (downpayment, closing costs)'
                cdata(n,7) = cdata(n,7)+1;    
            elseif string(Race(i)) == Race_Categories(n-1) && Accepted(i) == 0 && string(Denial_Reason_Table(i)) == 'Employment history'
                cdata(n,8) = cdata(n,8)+1; 
            end
        end
         

end
count = [38622,56081,13434,18486,315,1125];
for i = 1:length(count)
    cdata(i,:) = cdata(i,:)./count(i).*100;
end
xvalues = {'Other';'Debt-to-income ratio';'Credit application incomplete';
           'Collateral';'Unverifiable information';'Credit history';
           'Insufficient cash (downpayment, closing costs)';'Employment history'};
yvalues = {'White and Hispanic'; 'White and not Hispanic';
           'Asian';'Black or African American';
           'Native Hawaiian or Other Pacific Islander';
           'American Indian or Alaska Native'};
h = heatmap(xvalues,yvalues,cdata);
h.Title = 'Heat Map Distribution of Loan Rejection Rate Separated by Race/Ethnicity and Loan Rejection Reason Over Total Population';
h.XLabel = 'Loan Rejection Reason';
h.YLabel = 'Race/Ethnicity';
h.CellLabelFormat ='%.2f %%';
end

function piechart(Denial_Reason_Table)

Denial_Reason = zeros(1,8);
for i = 1:length(Denial_Reason_Table)
    
    if string(Denial_Reason_Table(i)) == 'Debt-to-income ratio'
        Denial_Reason(1) = Denial_Reason(1) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Other'
         Denial_Reason(2) = Denial_Reason(2) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Credit application incomplete'
         Denial_Reason(3) = Denial_Reason(3) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Collateral'
         Denial_Reason(4) = Denial_Reason(4) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Unverifiable information'
         Denial_Reason(5) = Denial_Reason(5) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Credit history'
         Denial_Reason(6) = Denial_Reason(6) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Insufficient cash (downpayment, closing costs)'
         Denial_Reason(7) = Denial_Reason(7) + 1;
    elseif string(Denial_Reason_Table(i)) == 'Employment history'
         Denial_Reason(8) = Denial_Reason(2) + 1;

    end
    
end


Labels = {'Insufficient cash (downpayment, closing costs): ';'Unverifiable information: ';
          'Employment history: ';'Other: ';'Collateral: ';'Credit application incomplete: ';
          'Credit history: ';'Debt-to-income ratio: '};
          
p = pie(sort(Denial_Reason));
map = [70 57 86;
       110 90 135;
       164 135 177;
       217 179 218;
       195 225 233;
       159 183 208;
       80 100 140;
       71 107 145;]/255;
colormap(map);
pText = findobj(p,'Type','text');
percentValues = get(pText,'String'); 
combinedtxt = strcat(Labels,percentValues); 
for i = 1:8
    
    pText(i).String = combinedtxt(i);
    
end

end

function genderbar

Malen = [0,0];
Femalen = [0,0];
Jointn = [0,0];
for i = 1:length(Gender)
    if string(Gender(i)) == 'Male'
        Malen(1) = Malen(1)+1;
    elseif string(Gender(i)) == 'Female' 
        Femalen(1) = Femalen(1)+1;
    else
        Jointn(1) = Jointn(1)+1;
    end      
   
    
end

for i = 1:length(Gender)
    if string(Gender(i)) == 'Male' && Accepted(i) == 1
        Malen(2) = Malen(2)+1;
    elseif string(Gender(i)) == 'Female' && Accepted(i) == 1
        Femalen(2) = Femalen(2)+1;
    elseif string(Gender(i)) == 'Joint' && Accepted(i) == 1
        Jointn(2) = Jointn(2)+1;
    end      
  
    
end



Y = zeros(2,3);
Y(1,1) = Malen(2)/Malen(1)*100;
Y(1,2) = Femalen(2)/Femalen(1)*100;
Y(1,3) = Jointn(2)/Jointn(1)*100;
Y(2,1) = (Malen(1)-Malen(2))/Malen(1)*100;
Y(2,2) = (Femalen(1)-Femalen(2))/Femalen(1)*100;
Y(2,3) = (Jointn(1)-Jointn(2))/Jointn(1)*100;
X = categorical({'Accepted','Not Accepted'});
bar(X,Y);
ylabel('Percentage');
legend('Male','Female','Joint (Married Couple)');

end

