function y=psnr(processed,original)
processed=im2double(processed);
original=im2double(original);
[m n]=size(original);

%mserror
error=processed - original;
se=error.*error;
sumse=sum(sum(se));
mse=sumse/(m*n);
%mserror

ma=max(max(processed));
y=10*log10(ma*ma/mse);


