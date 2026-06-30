%ELEC 2120 - Lab 1: Charles Brammell

%%variables
clc;
clear;
Variable1 = 3;
Variable2 = 6;
Variable3 = Variable1 + Variable2;
Variable4 = Variable1 * Variable2;
Variable5 = Variable2 - Variable1;
Variable6 = Variable2 / Variable1;

%%Matrix Math
Array1 = [1:10];
Array2 = [1:1.0:10];
Matrix1 = [1 2;3 4];
Matrix2 = eye(2);
Matrix3 = Matrix1+Matrix2;
Matrix4 = Matrix1*Matrix2;
Matrix5 = Matrix1.*Matrix2;
Matrix6 = Matrix1-Matrix2;
Matrix7 = Matrix2*inv(Matrix1);
Matrix8 = Matrix2/Matrix1;
%Charles Brammell


