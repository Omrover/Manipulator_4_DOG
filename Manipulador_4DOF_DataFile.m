% Simscape(TM) Multibody(TM) version: 25.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(7).translation = [0.0 0.0 0.0];
smiData.RigidTransform(7).angle = 0.0;
smiData.RigidTransform(7).axis = [0.0 0.0 0.0];
smiData.RigidTransform(7).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [3.9497582982050972e-07 -5.0465964740453728e-07 -15.100000000000335];  % mm
smiData.RigidTransform(1).angle = 3.1415926476501856;  % rad
smiData.RigidTransform(1).axis = [1 1.0453175261356258e-23 3.5198202271369055e-15];
smiData.RigidTransform(1).ID = "B[Brazo_L0-1:-:Brazo_L1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [6.9206862463033758e-12 -91.30000000011637 -4.5000000000095923];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962595 -0.57735026918962529 0.57735026918962595];
smiData.RigidTransform(2).ID = "F[Brazo_L0-1:-:Brazo_L1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 4.0000000000002256];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897878;  % rad
smiData.RigidTransform(3).axis = [1 6.314837403012766e-30 2.2456165071501881e-15];
smiData.RigidTransform(3).ID = "B[Brazo_L1-1:-:Brazo_L2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-400.00000035436585 -3.1491310892306501e-07 -30.149999752530647];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897714;  % rad
smiData.RigidTransform(4).axis = [-1 -1.1716125186487504e-28 1.071365218763274e-14];
smiData.RigidTransform(4).ID = "F[Brazo_L1-1:-:Brazo_L2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [5.9952043329758453e-12 -2.2204460492503131e-12 4.0000000000000036];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [-1 -4.3449354537377204e-32 3.9821867951883546e-16];
smiData.RigidTransform(5).ID = "B[Brazo_L2-1:-:Brazo_L3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [217.85834019272309 96.178672200249054 19.235817345113603];  % mm
smiData.RigidTransform(6).angle = 3.0839488653626184;  % rad
smiData.RigidTransform(6).axis = [-0.99976440534858624 -0.00062565765599982158 0.021696597670723208];
smiData.RigidTransform(6).ID = "F[Brazo_L2-1:-:Brazo_L3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [997.84201177583986 1053.7668628259848 1137.3417378802235];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[Brazo_L0-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.46707201784058328;  % kg
smiData.Solid(1).CoM = [0.00013465965804206306 0.080071563611165103 -44.357551478871947];  % mm
smiData.Solid(1).MoI = [476.88447930277027 475.80397622316985 496.52499992373117];  % kg*mm^2
smiData.Solid(1).PoI = [1.1355381701130869 0.0019409138873225783 -0.028746826595510845];  % kg*mm^2
smiData.Solid(1).color = [0.89411764705882346 0.89411764705882346 0.89411764705882346];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Brazo_L0*:*Predeterminado";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.64676907308216425;  % kg
smiData.Solid(2).CoM = [-0.030896310939195315 -25.266658112813875 -33.93144750083534];  % mm
smiData.Solid(2).MoI = [1106.509509297812 801.24333350622067 1345.9258957253367];  % kg*mm^2
smiData.Solid(2).PoI = [48.664635918171669 -0.60924555941330916 0.57998370730529425];  % kg*mm^2
smiData.Solid(2).color = [0.89411764705882346 0.89411764705882346 0.89411764705882346];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Brazo_L1*:*Predeterminado";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.67760919058760005;  % kg
smiData.Solid(3).CoM = [-143.99605781270148 -9.8162115410605863e-05 -34.664769928278893];  % mm
smiData.Solid(3).MoI = [404.39213595811691 16646.244485183444 16715.555730419037];  % kg*mm^2
smiData.Solid(3).PoI = [-0.0011606323905122083 285.69374869592338 0.010942383989798736];  % kg*mm^2
smiData.Solid(3).color = [0.89411764705882346 0.89411764705882346 0.89411764705882346];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Brazo_L2*:*Predeterminado";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.51698513984933525;  % kg
smiData.Solid(4).CoM = [141.74777483045457 145.4375035851786 -5.2877943427215053];  % mm
smiData.Solid(4).MoI = [837.74005480566893 929.93855432613384 1358.182459179953];  % kg*mm^2
smiData.Solid(4).PoI = [8.3771718563670117 -122.57023503653929 -169.15768501174594];  % kg*mm^2
smiData.Solid(4).color = [0.89411764705882346 0.89411764705882346 0.89411764705882346];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Brazo_L3*:*Predeterminado";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -2.9316364880864497e-13;  % deg
smiData.RevoluteJoint(1).ID = "[Brazo_L0-1:-:Brazo_L1-1]";

smiData.RevoluteJoint(2).Rz.Pos = -6.3611093629283714e-14;  % deg
smiData.RevoluteJoint(2).ID = "[Brazo_L1-1:-:Brazo_L2-1]";

smiData.RevoluteJoint(3).Rz.Pos = 47.653516290804014;  % deg
smiData.RevoluteJoint(3).ID = "[Brazo_L2-1:-:Brazo_L3-1]";

