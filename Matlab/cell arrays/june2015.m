function[a]=june2015
a=cell(30,3)
for i=1:30
[Datenumber,Datename]=weekday(datenum([2015 6 i]));
a(i,:)={'june', i,Datename};
end
end