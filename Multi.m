function M_Data = Multi(DataInp,S)
% Generate the consecutive coarse-grained time series
% Input:    Data: time series;
%           S: the scale factor
% Output:
%           M_Data: the coarse-grained time series at the scale factor S

[C, L]=size(DataInp);
J = fix(L/S);
M_Data = ones(C,J);

for j=1:C
    Data=DataInp(j,:);
    for i=1:J
        M_Data(j,i) = mean(Data((i-1)*S+1:i*S));
    end
end
