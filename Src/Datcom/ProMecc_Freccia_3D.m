%*************************************************************************
% The source code contained herein was developed for Embry-Riddle 
% Aeronautical University by Glenn P. Greiner, Professor and Jafar 
% Mohammed, Student Assistant of the Aerospace Engineering Department, 
% Daytona Beach Campus. Copyright 2008. All rights reserved.

% Although due care has been taken to present accurate programs this 
% software is provided "as is" WITHOUT WARRANTY OF ANY KIND, EITHER 
% EXPRESSED OR IMPLIED, AND EXPLICITLY EXCLUDING ANY IMPLIED WARRANTIES 
% OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR USE. The entire risk as 
% to the quality and performance of the software is with the user. The 
% program is made available only for education and personal research. It 
% may not be sold to other parties. If you copy some or all of the 
% software you are requested to return a copy of any source additions that
% you believe make a significant improvement in its range of application.
%*************************************************************************


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% datcom3d ProMecc-Freccia Input File                                           %
% Built by Datcom+ Pro program                                         %
% Works with Version datcom3d v1.2                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc
clf

%%% VISUALIZATION and RESOLUTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
wframe = 0;       %0 = Shaded model
                  %1 = Wireframe model
                
fusres = 20;      %Fuselage resolution
wgres  = 20;      %Wing,HT,VT resolution

%%% (DO NOT CHANGE VALUES IN THIS BOX) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XW=0;ZW=0;ALIW=0;XH=0;ZH=0;ALIH=0;XV=0;YV=0;numVT=1;VERTUP=1;         %%
NX=0;X=zeros(20);S=zeros(20);R=zeros(20);ZU=zeros(20);ZL=zeros(20);   %%
CHRDR_WG=0;CHRDBP_WG=0;CHRDTP_WG=0;SSPN_WG=0;SSPNOP_WG=0;SAVSI_WG=0;  %%
SAVSO_WG=0;CHSTAT_WG=0;DHDADI_WG=0;DHDADO_WG=0;TC_WG=.12;             %%
CHRDR_HT=0;CHRDBP_HT=0;CHRDTP_HT=0;SSPN_HT=0;SSPNOP_HT=0;SAVSI_HT=0;  %%
SAVSO_HT=0;CHSTAT_HT=0;DHDADI_HT=0;DHDADO_HT=0;TC_HT=.12;             %%
CHRDR_VT=0;CHRDBP_VT=0;CHRDTP_VT=0;SSPN_VT=0;SSPNOP_VT=0;SAVSI_VT=0;  %%
SAVSO_VT=0;CHSTAT_VT=0;TC_VT=.12;                                     %%
SPANFI_F=0;SPANFO_F=0;CHRDFI_F=0;CHRDFO_F=0;DELTA_F=0;                %%
SPANFI_A=0;SPANFO_A=0;CHRDFI_A=0;CHRDFO_A=0;DELTAL_A=0;DELTAR_A=0;    %%
SPANFI_E=0;SPANFO_E=0;CHRDFI_E=0;CHRDFO_E=0;DELTA_E=0;                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% INPUT PARAMETERS BELOW %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% SYNTHS parameters
XW   =     6.65;
ZW   =    -1.11;
ALIW =      .70;
XH   =    19.77;
ZH   =     -.06;
ALIH =    -2.00;
XV   =    17.02;
ZV   =      .16;


% BODY parameters
NX = 19;
X  = [    .00,    .97,   1.53,   1.88,   2.80,   3.71,   4.68,   6.02,   6.72,   7.43,   8.16,   9.04,   9.96,  11.06,  12.52,  14.13,  16.82,  19.13,   21.08];
ZU = [    .00,    .48,    .58,    .63,    .72,    .80,    .86,    .91,   1.34,   1.71,   1.97,   2.14,   2.18,   2.05,   1.60,   1.09,    .59,    .35,     .16];
ZL = [    .00,   -.44,   -.81,  -1.01,  -1.36,  -1.56,  -1.67,  -1.72,  -1.73,  -1.72,  -1.70,  -1.65,  -1.59,  -1.48,  -1.31,  -1.08,   -.71,   -.48,    -.22];
R  = [    .00,    .46,   1.07,   1.16,   1.34,   1.49,   1.63,   1.79,   1.84,   1.88,   1.89,   1.88,   1.83,   1.73,   1.51,   1.22,    .74,    .47,     .34];
S  = [    .00,    .67,   2.32,   2.98,   4.37,   5.52,   6.49,   7.40,   8.88,  10.13,  10.92,  11.23,  10.84,   9.57,   6.90,   4.14,   1.52,    .61,     .20];

% WING parameters
CHRDTP_WG =     2.95;
SSPNE_WG  =    12.54;
SSPN_WG   =    14.40;
CHRDR_WG  =     4.85;
SAVSI_WG  =     1.00;
CHSTAT_WG =      .25;
TWISTA_WG =      .00;
DHDADI_WG =     5.00;
DHDADO_WG =      .00;
TC_WG     =      .00;

% HORIZONTAL TAIL parameters
CHRDTP_HT =     1.97;
SSPNE_HT  =     4.74;
SSPN_HT   =     4.88;
CHRDR_HT  =     2.95;
SAVSI_HT  =     4.00;
CHSTAT_HT =      .25;
TWISTA_HT =      .00;
DHDADI_HT =      .00;
DHDADO_HT =      .00;


% VERTICAL TAIL parameters
CHRDTP_VT =     2.12;
SSPNE_VT  =     4.28;
SSPN_VT   =     4.43;
CHRDR_VT  =     4.05;
SAVSI_VT  =    48.00;
CHSTAT_VT =      .25;


% WING FLAP
SPANFI_F =      .70;
SPANFO_F =     4.86;
CHRDFI_F =     1.06;
CHRDFO_F =      .70;
DELTA_F  =    15.00;


% WING AILERON
SPANFI_A =     7.66;
SPANFO_A =    13.35;
CHRDFI_A =      .88;
CHRDFO_A =      .69;
DELTAL_A =    18.00;
DELTAR_A =   -18.00;


% ELEVATOR
SPANFI_E =      .17;
SPANFO_E =     4.86;
CHRDFI_E =     1.06;
CHRDFO_E =      .70;
DELTA_E  =    15.00;


%%% PLOTTING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
warning off MATLAB:divideByZero
hold on

plotFuselage(NX,X,S,R,ZU,ZL,fusres)
plotWing(XW,ZW,ALIW,CHRDR_WG,CHRDBP_WG,CHRDTP_WG,SSPN_WG,SSPNOP_WG,SAVSI_WG,SAVSO_WG,CHSTAT_WG,DHDADI_WG,DHDADO_WG,...
         SPANFI_F,SPANFO_F,CHRDFI_F,CHRDFO_F,DELTA_F,SPANFI_A,SPANFO_A,CHRDFI_A,CHRDFO_A,DELTAL_A,DELTAR_A,TC_WG,wgres)

plotHT(XH,ZH,ALIH,CHRDR_HT,CHRDBP_HT,CHRDTP_HT,SSPN_HT,SSPNOP_HT,SAVSI_HT,SAVSO_HT,CHSTAT_HT,DHDADI_HT,DHDADO_HT,...
       SPANFI_E,SPANFO_E,CHRDFI_E,CHRDFO_E,DELTA_E,TC_HT,wgres)

plotVT(XV,YV,ZV,CHRDR_VT,CHRDBP_VT,CHRDTP_VT,SSPN_VT,SSPNOP_VT,SAVSI_VT,SAVSO_VT,CHSTAT_VT,VERTUP,TC_VT,wgres)


%%% VIEWPORT/FIGURE PROPERTIES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if wframe == 0
    %colormap([1 .7 .1])      %Set a/c to gold
    colormap([0 0 1])         %Set a/c to blue
    shading interp            %Interpolated shading
    lighting gouraud          %Smooth airplane mesh
    %camlight right           %Apply a light source  
    
    %Custom Lighting Options, Note:[X Y Z]
    light('Position',[1 -2 1],'Style','infinite');
    light('Position',[1 2 1],'Style','infinite');
    light('Position',[0 0 -6],'Style','infinite');
else
    colormap([1 1 1])         %Set a/c to white
end    



axis off                      %Turn off axis
axis equal                    %Correct aspect ratio
camva(4.5)                   %Zoom in a/c to fit figure
view(3)                       %Apply initial viewport rotation
%camproj('perspective')       %Perspective viewing (not R2006a compatible)
rotate3d  on                  %Rotate icon enabled at start up

%showplottool('plotbrowser')
set(gcf,'NumberTitle','off','Name','Aircraft Plot','Color',[1 1 1]);

