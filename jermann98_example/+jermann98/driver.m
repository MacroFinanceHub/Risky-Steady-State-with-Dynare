%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'jermann98';
M_.dynare_version = '4.6.1';
oo_.dynare_version = '4.6.1';
options_.dynare_version = '4.6.1';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('jermann98.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'ez'};
M_.exo_names_tex(1) = {'ez'};
M_.exo_names_long(1) = {'ez'};
M_.endo_names = cell(12,1);
M_.endo_names_tex = cell(12,1);
M_.endo_names_long = cell(12,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'c'};
M_.endo_names_long(1) = {'c'};
M_.endo_names(2) = {'d'};
M_.endo_names_tex(2) = {'d'};
M_.endo_names_long(2) = {'d'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'i'};
M_.endo_names_long(3) = {'i'};
M_.endo_names(4) = {'k'};
M_.endo_names_tex(4) = {'k'};
M_.endo_names_long(4) = {'k'};
M_.endo_names(5) = {'r1'};
M_.endo_names_tex(5) = {'r1'};
M_.endo_names_long(5) = {'r1'};
M_.endo_names(6) = {'rf1'};
M_.endo_names_tex(6) = {'rf1'};
M_.endo_names_long(6) = {'rf1'};
M_.endo_names(7) = {'w'};
M_.endo_names_tex(7) = {'w'};
M_.endo_names_long(7) = {'w'};
M_.endo_names(8) = {'y'};
M_.endo_names_tex(8) = {'y'};
M_.endo_names_long(8) = {'y'};
M_.endo_names(9) = {'z'};
M_.endo_names_tex(9) = {'z'};
M_.endo_names_long(9) = {'z'};
M_.endo_names(10) = {'mu'};
M_.endo_names_tex(10) = {'mu'};
M_.endo_names_long(10) = {'mu'};
M_.endo_names(11) = {'erp1'};
M_.endo_names_tex(11) = {'erp1'};
M_.endo_names_long(11) = {'erp1'};
M_.endo_names(12) = {'AUX_EXPECT_LEAD_0_108'};
M_.endo_names_tex(12) = {'AUX\_EXPECT\_LEAD\_0\_108'};
M_.endo_names_long(12) = {'AUX_EXPECT_LEAD_0_108'};
M_.endo_partitions = struct();
M_.param_names = cell(12,1);
M_.param_names_tex = cell(12,1);
M_.param_names_long = cell(12,1);
M_.param_names(1) = {'alf'};
M_.param_names_tex(1) = {'alf'};
M_.param_names_long(1) = {'alf'};
M_.param_names(2) = {'chihab'};
M_.param_names_tex(2) = {'chihab'};
M_.param_names_long(2) = {'chihab'};
M_.param_names(3) = {'xi'};
M_.param_names_tex(3) = {'xi'};
M_.param_names_long(3) = {'xi'};
M_.param_names(4) = {'delt'};
M_.param_names_tex(4) = {'delt'};
M_.param_names_long(4) = {'delt'};
M_.param_names(5) = {'tau'};
M_.param_names_tex(5) = {'tau'};
M_.param_names_long(5) = {'tau'};
M_.param_names(6) = {'g'};
M_.param_names_tex(6) = {'g'};
M_.param_names_long(6) = {'g'};
M_.param_names(7) = {'rho'};
M_.param_names_tex(7) = {'rho'};
M_.param_names_long(7) = {'rho'};
M_.param_names(8) = {'a1'};
M_.param_names_tex(8) = {'a1'};
M_.param_names_long(8) = {'a1'};
M_.param_names(9) = {'a2'};
M_.param_names_tex(9) = {'a2'};
M_.param_names_long(9) = {'a2'};
M_.param_names(10) = {'betstar'};
M_.param_names_tex(10) = {'betstar'};
M_.param_names_long(10) = {'betstar'};
M_.param_names(11) = {'bet'};
M_.param_names_tex(11) = {'bet'};
M_.param_names_long(11) = {'bet'};
M_.param_names(12) = {'stdez'};
M_.param_names_tex(12) = {'stdez'};
M_.param_names_long(12) = {'stdez'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 12;
M_.param_nbr = 12;
M_.orig_endo_nbr = 11;
M_.aux_vars(1).endo_index = 12;
M_.aux_vars(1).type = 4;
M_.aux_vars(1).orig_expr = 'EXPECTATION(0)(betstar/g*mu(1)/mu)';
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.nonzero_hessian_eqs = [1 4 6 7 8 9 10 12];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 12;
M_.eq_nbr = 12;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 4 16;
 0 5 0;
 0 6 17;
 2 7 0;
 0 8 0;
 0 9 0;
 0 10 0;
 0 11 0;
 3 12 18;
 0 13 19;
 0 14 0;
 0 15 0;]';
M_.nstatic = 7;
M_.nfwrd   = 2;
M_.npred   = 1;
M_.nboth   = 2;
M_.nsfwrd   = 4;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [18; 14; 12; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , 'd' ;
  3 , 'name' , 'w' ;
  4 , 'name' , 'y' ;
  5 , 'name' , 'c' ;
  6 , 'name' , 'mu' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'rf1' ;
  10 , 'name' , 'r1' ;
  11 , 'name' , 'erp1' ;
};
M_.mapping.c.eqidx = [5 6 ];
M_.mapping.d.eqidx = [2 5 ];
M_.mapping.i.eqidx = [1 2 7 10 ];
M_.mapping.k.eqidx = [1 4 7 10 ];
M_.mapping.r1.eqidx = [10 11 ];
M_.mapping.rf1.eqidx = [9 11 ];
M_.mapping.w.eqidx = [2 3 5 ];
M_.mapping.y.eqidx = [2 3 4 ];
M_.mapping.z.eqidx = [4 7 8 10 ];
M_.mapping.mu.eqidx = [6 7 ];
M_.mapping.erp1.eqidx = [11 ];
M_.mapping.ez.eqidx = [8 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 4 9 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(12, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(12, 1);
M_.endo_trends = struct('deflator', cell(12, 1), 'log_deflator', cell(12, 1), 'growth_factor', cell(12, 1), 'log_growth_factor', cell(12, 1));
M_.NNZDerivatives = [43; 74; -1; ];
M_.static_tmp_nbr = [13; 6; 0; 0; ];
M_.params(1) = 0.36;
alf = M_.params(1);
M_.params(2) = 0.819;
chihab = M_.params(2);
M_.params(3) = 0.2325581395348837;
xi = M_.params(3);
M_.params(4) = 0.025;
delt = M_.params(4);
M_.params(6) = 1.005;
g = M_.params(6);
M_.params(5) = 5;
tau = M_.params(5);
M_.params(7) = 0.95;
rho = M_.params(7);
M_.params(12) = 0.01;
stdez = M_.params(12);
M_.params(8) = (M_.params(6)-1+M_.params(4))^(1/M_.params(3));
a1 = M_.params(8);
M_.params(9) = M_.params(6)-1+M_.params(4)-(M_.params(6)-1+M_.params(4))^(1/M_.params(3))/(1-1/M_.params(3))*(M_.params(6)-1+M_.params(4))^(1-1/M_.params(3));
a2 = M_.params(9);
M_.params(10) = M_.params(6)/1.011138;
betstar = M_.params(10);
M_.params(11) = M_.params(10)/M_.params(6)^(1-M_.params(5));
bet = M_.params(11);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(12))^2;
M_.risky_steadystate = 1; 
options_.order = 2;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('jermann98_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('jermann98_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('jermann98_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('jermann98_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('jermann98_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('jermann98_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('jermann98_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
