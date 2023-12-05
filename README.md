# My implementation of solvers for PNP problem
## Introduction
This is my implementation of pnp problem including gauss newton, dlt and EPNP.

Test data is from [slambook2](https://github.com/gaoxiang12/slambook2).

## Requirement
It is recommended to use [VcPkg](https://github.com/microsoft/vcpkg).

- Eigen Required.
- OpenCV Optional if you want to build with test.

hayden@hayden-desktop:~/Dev/pnp/build$ ./pnp ../data/1.png ../data/2.png ../data/1_depth.png ../data/2_depth.png 
-- Max dist : 95.000000 
-- Min dist : 7.000000 
find 81 points in total!
3d-2d pairs: 77
solve pnp in opencv:
R =
[0.9979193252225095, -0.05138618904650328, 0.03894200717385427;
 0.05033852907733768, 0.9983556574295407, 0.02742286944795593;
 -0.04028712992732941, -0.02540552801471822, 0.998865109165653]
t =
[-0.1255867099750184;
 -0.007363525258815341;
 0.0609992658867812]
calling pnp by gauss newton
iteration 0 cost: 44765.4
iteration 1 cost: 431.695
iteration 2 cost: 319.56
iteration 3 cost: 319.559
R:
  0.997919 -0.0513862   0.038942
 0.0503385   0.998356  0.0274229
-0.0402871 -0.0254055   0.998865
t:
  -0.125587
-0.00736353
  0.0609993
solve pnp by gauss newton:
R =
  0.997919 -0.0513862   0.038942
 0.0503385   0.998356  0.0274229
-0.0402871 -0.0254055   0.998865
t =
  -0.125587
-0.00736353
  0.0609993
calling pnp by dlt
solve pnp by dlt:
R =
  0.998213 -0.0542115  0.0251304
 0.0513416   0.993311   0.103423
 -0.030569  -0.101948    0.99432
t =
 -0.122503
-0.0184005
  0.212205
calling epnp
solve epnp:
R =
  0.997666 -0.0501261  0.0463636
 0.0488789   0.998422   0.027656
-0.0476767 -0.0253253   0.998542
t =
  -0.139092
-0.00917623
   0.062117
hayden@hayden-desktop:~/Dev/pnp/build$ 

