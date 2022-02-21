# Sears-Haack-Von-Karman-Body
A simple Matlab code which draws the profile curve(s) of Haack Series for given parameters and exports the xyz points to a file in working directory which can then be imported into CAD software

The Sears-Haack body is an axisymmetric body with minimum wave drag (at transonic speeds) derived theoretically from linearized potential flow equations, first by Wolfgang Haack in 1941 and later by William Sears in 1947.
Wolfgang Haack further proposed a general formula for a series of axisymmetric bodies with low drag for given length and maximum diameter. A special case of the Haack Series is the Von Karman Ogive (for C=0), which gives a body with least wave drag even at supersonic and hypersonic speeds.

Code Inputs:
1. Length of the body (L)
2. Maximum/Base Radius of the body (R). Recommended is 1/10th for most cases (proven through research).
3. Number of discrete points to define the curve (n). Recommended is 500 at least.
4. Haack Series constant (C). Different values of C givens different shapes. C=0 for the famed Von Karman Ogive, C= 1/3 for maximized volume low drag body, C= 2/3 for tangent shape body.
Three types of bodies can be generated with this code: One is the simple Sears-Haack body with maximum diameter at the center and pointed tail, second is the ogive shaped advanced Haack Series bodies, third is the dual/reflected ogive with pointed tail and maximum diameter at the center. The mirrored sections in the third case may not be perfectly tangent to each other except for C=2/3.

Code Outputs:
1. Matlab plot showing the profile curve of the resultant body
2. xyz points saved to a file named 'lowDBpoints.txt' in the working directory.
To import xyz points to Solidworks and draw 3D bodies, open Solidworks and in features click 'Curve through XYZ points', browse and select the 'lowDBpoints.txt' file and click OK. After that open a new sketech in XY plane, then click on Convert Entities and select the curve and click OK. Now you can use revolve or extrude features to make whatever you like. To revolve, first you will need to draw a solid line joining the two ends of the curve.
