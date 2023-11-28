%% ENGR-10, 11/28/2023; Intro to ENG 10.; Author:Darien Marble;
clc; format compact;

% problem 1 - plotting.
figure(1); plot(X.Y,)




% problem 2 - advanced plotting
[X,Y] = meshgird(-8: .5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
figure(3)
mesh(X,Y,Z,'EdgeColor','black')
surf(X.Y,Z)
colormap hsv 
colorbar

% problem 3 - if/else statement and for-loop
D = [125 190 0 0 0] % (actual) dostance traveld in [cm] centermeter
W = 125 % weight of vehicles in [grams]
opexp = zerio(1,5) % operating expense, creates [0 0 0 0 0]; units are in[$]
length(D) % length () calcuates the length

for i=1:length(D)
    if 50 > D(i) && D(i) > 0
        D(i) = 0
        opexp(i) = 0.003*W*D(i)+45
    elseif 100 > D(i) && D(i) >= 50
        D(i) = 50
        opexp(i) = 0.003*W*D(i)+45
    elseif 150 > D(i) && D(i) >= 100
        D(i) = 100
        opexp(i) = 0.003*W*D(i)+45
    elseif 200 > D(i) && D(i) >= 150
        D(i) = 150
        opexp(i) = 0.003*W*D(i)+45
    elseif D(i) >= 250
        opexp(i) = 0.003*W*D(i)+45
    else
    end
end

% Problem 4 - While loop
X = 5;
while x < 25;
    disp(x)
    x = 2*x - 1;
end

% Problem 5 - While loop again
total = 0;
k = 0;
while total < 1e+4
    k = k + 1;
    total = 5*k^2 - 2*k + total;
end
fprintf('The Number of terms is: %g \n' , k)
  fprintf ('The sum is: %g \n' , total)