function r = snrr(in, est)


error = in - est;
r = 10 * log10((255^2)/ mean(error(:).^2));