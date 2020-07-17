function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = jermann98.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(12, 20);
g1(1,6)=(-(y(2)*T(2)*T(21)*T(22)));
g1(1,2)=(-(1-params(4)+T(4)+y(2)*T(2)*T(22)*T(28)));
g1(1,7)=params(6);
g1(2,5)=1;
g1(2,6)=1;
g1(2,10)=1;
g1(2,11)=(-1);
g1(3,10)=1;
g1(3,11)=(-(1-params(1)));
g1(4,2)=(-(T(6)*T(29)));
g1(4,11)=1;
g1(4,12)=(-(T(5)*T(7)));
g1(5,4)=1;
g1(5,5)=(-1);
g1(5,10)=(-1);
g1(6,1)=(-((-(params(2)/params(6)))*T(19)));
g1(6,4)=(-(T(19)-params(2)*params(11)*(-params(2))*T(20)));
g1(6,16)=params(2)*params(11)*params(6)*T(20);
g1(6,13)=1;
g1(7,6)=(-(T(18)*T(9)*params(8)*T(21)*T(23)));
g1(7,17)=(-(T(9)*T(11)*T(27)));
g1(7,2)=(-(T(18)*T(9)*params(8)*T(23)*T(28)));
g1(7,7)=(-(T(9)*T(11)*T(32)));
g1(7,18)=(-(T(9)*T(11)*T(14)*params(1)*T(12)));
g1(7,13)=1;
g1(7,19)=(-(T(18)*T(8)*T(11)));
g1(8,3)=(-(params(7)*1/y(3)));
g1(8,12)=1/y(12);
g1(8,20)=1;
g1(9,9)=1;
g1(9,15)=(-((-1)/(y(15)*y(15))));
g1(10,6)=(-(T(18)*params(8)*T(21)*T(23)));
g1(10,17)=(-(T(11)*T(27)));
g1(10,2)=(-(T(18)*params(8)*T(23)*T(28)));
g1(10,7)=(-(T(11)*T(32)));
g1(10,8)=1;
g1(10,18)=(-(T(11)*T(14)*params(1)*T(12)));
g1(11,8)=(-1);
g1(11,9)=1;
g1(11,14)=1;
g1(12,13)=(-((-T(9))/(y(13)*y(13))));
g1(12,19)=(-(T(8)/y(13)));
g1(12,15)=1;

end
