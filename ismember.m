function [tf,loc] = ismember(a,s,flag)
if ~(isa(a,'opaque') || isa(s,'opaque'))
    rowsA = size(a,1);
    colsA = size(a,2);
    rowsS = size(s,1);
    colsS = size(s,2);
    
    if(rowsA == 1)
        au = repmat(a,rowsS,1);
        d = au(1:end,:)==s(1:end,:);
        d = all(d,2);
        tf = any(d);
        return;
    end
end

end

