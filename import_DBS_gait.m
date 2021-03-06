function dbsTable = import_DBS_gait(startLoc)
%IMPORTFILE Import numeric data from a text file as a matrix.
%   ADBS1NOSTRAPREACHFRONT = IMPORTFILE(FILENAME) Reads data from text file
%   FILENAME for the default selection.
%
%   ADBS1NOSTRAPREACHFRONT = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads
%   data from rows STARTROW through ENDROW of text file FILENAME.
%
% Example:
%   aDBS1nostrapreachFront = importfile('aDBS1 nostrap_reachFront.txt', 2,
%   1008);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2016/02/19 21:28:16

%% Initialize variables.

cd(startLoc)

[FileName,PathName,~] = uigetfile('*.txt');

cd(PathName)
%%

dbsTable = readtable(FileName,'Delimiter','tab','ReadVariableNames',true);


