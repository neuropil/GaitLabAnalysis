function [magnitude, ux, uy] = unitVec(x,y)


magnitude = sqrt(x^2 + y^2);

ux = x/magnitude;
uy = y/magnitude;

