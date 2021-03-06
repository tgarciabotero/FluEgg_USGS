# Fluvial Egg Drift Simulator (FluEgg)
A three-dimensional Lagrangian model capable of evaluating the influence of flow velocity, shear dispersion and turbulent diffusion on the transport and dispersal patterns of Asian carp eggs is presented. The models variables include not only biological behavior (growth rate, density changes) but also the physical characteristics of the flow field, such as mean velocities and eddy diffusivities.

# Code Structure
The Graphical User Inter Interface (GUI) code for the FluEgg is FluEgg.m and FluEgg.fig. 
The Main function of FluEgg is called FluEgggui, this function uses the Jump function, in this function particles move (jump) every time step following the random walk and random displacement approach.

# Motivation
The transport of Asian carp eggs and fish in the early stages of development is very important on their life history and recruitment success. A better understanding of the transport and dispersal patterns of Asian carp at early life stages might give insight into the development and implementation of control strategies for Asian carp.

The FluEgg model was developed to evaluate the influence of flow velocity, shear dispersion and turbulent diffusion on the transport and dispersal patterns of Asian carp eggs. FluEgg output includes the three-dimensional location of the eggs at each time
step together with its growth stage. The output results can be used to estimate lateral, longitudinal or vertical egg distribution. In addition, it can be used to generate an egg breakthrough curve (egg concentration as a function of time) at a certain downstream location from the virtual spawning location. Egg breakthrough curves are important for understanding egg dispersion and travel times.
Egg vertical concentration distribution might give insights into egg suspension and settlement. Egg longitudinal concentration distributions can be used to estimate the streamwise and shear velocity, and minimum river length required for successful egg development. 

Egg lateral distributions give information about dead zones, provided the input hydraulic data for the model is sufficiently well
described. The location of suitable spawning grounds can be predicted based on the egg growth stage and on the vertical, lateral
or longitudinal egg concentration distributions.
The FluEgg model has the capability to predict the drifting behavior of eggs based on the physical properties of the eggs and
the environmental and hydrodynamic characteristics of the stream where the eggs are drifting.
A complete description of the FluEgg model was presented by Garcia et al. (2013); users can refer to this paper for detailed information on both the mathematical model and the performance of the model.

#References
Garcia, T., Jackson, P.R.,Murphy, E.A., Valocchi, A.J., Garcia, M.H., 2013. Development of a Fluvial Egg Drift Simulator to evaluate the transport and dispersion of Asian carp eggs in rivers. Ecol. Model. 263, 211–222

# Installation
The FluEgg model iswritten in the MATLAB® programming language (Mathworks, Natick, MA,USA). It requires the statistics and image processing toolboxes.

==============================================================================
FluEgg Release License
==============================================================================
%==============================================================================
% FluEgg -Fluvial Egg Drift Simulator
%==============================================================================
% Copyright (c) 2013 Tatiana Garcia

   % This program is free software: you can redistribute it and/or modify
    % it under the terms of the GNU General Public License version 3 as published by
    % the Free Software Foundation (currently at http://www.gnu.org/licenses/agpl.html) 
    % with a permitted obligation to maintain Appropriate Legal Notices.

    % This program is distributed in the hope that it will be useful,
    % but WITHOUT ANY WARRANTY; without even the implied warranty of
    % MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    % GNU General Public License for more details.

    % You should have received a copy of the GNU General Public License
    % along with this program.  If not, see <http://www.gnu.org/licenses/>.

==============================================================================
DISCLAIMER
==============================================================================

Unless otherwise noted below, this software is in the public domain because it contains materials that
originally came from the United States Geological Survey, an agency of the United States Department of
Interior. For more information, see the official USGS copyright policy at:

http://www.usgs.gov/visual-id/credit_usgs.html#copyright

Although this software program has been used by the USGS, no warranty, expressed or implied, is made by 
the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material 
nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS 
in connection therewith.

This software is provided "AS IS."

Attributions and Licences:
References to or use of non-U.S. Department of the Interior (DOI) products does not constitute an endorsement by the DOI.

This information is preliminary or provisional and is subject to
revision. It is being provided to meet the need for timely best
science. The information has not received final approval by the USGS
and is provided on the condition that neither the USGS nor the
U.S. Government shall be held liable for any damages resulting from
the authorized or unauthorized use of the information.

==============================================================================
Copyrights and Licenses for Third Party Software Distributed with FluEgg:
==============================================================================
The FluEgg program contains code written by third parties.  Such software will
have its own individual LICENSE.TXT file in the directory in which it appears.
This file will describe the copyrights, license, and restrictions which apply
to that code.

The disclaimer of warranty in thid Open Source License
applies to all code in the FluEgg Distribution, and nothing in any of the
other licenses gives permission to use the names of Tatiana Garcia, U.S Geological Survey 
to endorse or promote products derived from this Software.

The following pieces of software have additional or alternate copyrights,
licenses, and/or restrictions:

Program/Function      Developer                                       Directory                               Notes               
----------------      ---------                                       ---------                               ---------
FluEgg 1.3            Tatiana Garcia, University of Illinois          FluEgg_Git_Repo\license_FluEgg_1.3.txt
voxel.m               Suresh Joel                                     FluEgg_Git_Repo\voxel.m  
cells.m               Suresh Joel                                     FluEgg_Git_Repo\voxel.m  
dlmcell               Roland Pfister                                  FluEgg_Git_Repo\dlmcell.m                Used in FluEgggui.m 
parseArgs.m           Aslak Grinsted                                  FluEgg_Git_Repo\parseArgs.m              Used in Subaxis.m
subaxis.m             Aslak Grinsted                                  FluEgg_Git_Repo\subaxis.m                This function is used to reduce spacing between figure border and figure axis
savefast.m            Timothy E. Holy                                 FluEgg_Git_Repo\savefast.m               Used in FluEgggui.m
pcscurvature.m        Inci-Burak Güneralp,Prolific Oven,Palo Alto,CA  FluEgg_Git_Repo\pcscurvature.m           Used in google_earth.m-->Parametric cubic spline interpolation of digitized data points of meandering rivers
reorient.m            Inci-Burak Güneralp,Prolific Oven,Palo Alto,CA  FluEgg_Git_Repo\reorient.m               Used in pcscurvature.m
savitzkyGolayFilt.m   R. Losada                                       FluEgg_Git_Repo\savitzkyGolayFilt.m      Used in pcscurvature.m
savitzkyGolay.m       Jianwen Luo,Tsinghua University                 FluEgg_Git_Repo\savitzkyGolay.m          Used in savitzkyGolayFilt.m 
deg2utm.m             Rafael Palacios,Universidad Pontificia Comillas FluEgg_Git_Repo\deg2utm.m                Used in google_earth.m-->Function to convert lat/lon vectors into UTM coordinates
GEplot_3D.m           Modif by P.R. Jackson and Tatiana Garcia        FluEgg_Git_Repo\GEplot_3D.m              Used in google_earth.m. Initial version (GEplot) developed by Rafael Palacios, Universidad Pontificia Comillas.
kml2struct.m          James Slegers                                                                            Used in google_earth.m
sn2xy.m                                                               FluEgg_Git_Repo\sn2xy_License.txt        Used in google_earth.m-->Transform curvilinear orthogonal to cartesian coordinates
utm2deg.m             Rafael Palacios,Universidad Pontificia Comillas FluEgg_Git_Repo\deg2utm.m                Used in google_earth.m and GEplot_3D-->Function to convert vectors of UTM coordinates into Lat/Lon vectors (WGS84).
