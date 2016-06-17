% function plotBaseCH
% ----
% Plots finger base frames CH
% ----
% OpenBionics | info@openbionics.org
% http://www.openbionics.org
% ----
% Copyright (C) 2015 OpenBionics Initiative (www.openbionics.org)
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

function plotBaseCH(robot,human,Data,p)

if strcmp(p.ch,'ON')==1;
figure(1); plot(Data.CHBases.O);
figure(2); plot(Data.CHBases.P);
end

if strcmp(p.compare,'ON')==1;
    
percentage=0;

if isnumeric(robot{1})~=1
hold on
plot(robot{1},[robot{1}.qlim(1,2),robot{1}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[1 0 0],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(robot{2},[robot{2}.qlim(1,2),robot{2}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[1 0 0],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(robot{3},[robot{3}.qlim(1,2),robot{3}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[1 0 0],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(robot{4},[robot{4}.qlim(1,2),robot{4}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[1 0 0],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(robot{5},[robot{5}.qlim(1,2),robot{5}.qlim(2,2),...
    robot{5}.qlim(3,2)]*percentage);%,...
    %'cylinder',[1 0 0],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
end

hold on
plot(human{1},[human{1}.qlim(1,2), ...
    human{1}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[0 0 1],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(human{2},[human{2}.qlim(1,2), ...
    human{2}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[0 0 1],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(human{3},[human{3}.qlim(1,2), ...
    human{3}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[0 0 1],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(human{4},[human{4}.qlim(1,2), ...
    human{4}.qlim(2,2)]...
    *percentage); %,... 
    %'cylinder',[0 0 1],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')
hold on
plot(human{5},[human{5}.qlim(1,2), ...
    human{5}.qlim(2,2),...
    human{5}.qlim(3,2)]*percentage); %,... 
    %'cylinder',[0 0 1],'noshadow','noname',...
    %'nobase','nowrist','nojaxes')

end

end
