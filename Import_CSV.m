%%%:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::%
%%                  Import CSV created with HEC-DSSVue                    %
%:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::%
%-------------------------------------------------------------------------%
% This function is used to extract data from a CSV files that was created %
% with HEC-DSSVue.
% References:                                                             %
% Goodell, C.R. 2014.                                                     %
% Breaking the HEC-RAS Code: A User's Guide to Automating HEC-RAS. A User's
% Guide to Automating HEC-RAS. h2ls. Portland, OR.                        %
%-------------------------------------------------------------------------%
%                                                                         %
%-------------------------------------------------------------------------%
%   Created by      : Santiago Santacruz & Tatiana                        %
%   Date            : January 20, 2016                                    %
%   Last Modified   : January 20, 2016                                    %
%-------------------------------------------------------------------------%
% Inputs:
% Outputs:
% Copyright 2017 Santiago Santacruz & Tatiana Garcia
%:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::%

fid = fopen('dss_text.dat');
parts = textscan(fid, '%s %s', 5);
units = textscan(fid, '%s %s', 1);
type = textscan(fid, '%s %s', 1);
data = textscan(fid, '%s %s %s %f');
fclose(fid)