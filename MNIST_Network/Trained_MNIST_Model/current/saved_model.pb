иЁ
#я"
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:џ  џ
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02unknownиш
f
XPlaceholder*
dtype0*(
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
i
labelsPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ
*
shape:џџџџџџџџџ

o
layer_1/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"     
b
layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
layer_1/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
­
(layer_1/truncated_normal/TruncatedNormalTruncatedNormallayer_1/truncated_normal/shape*
T0*
dtype0*
seed2** 
_output_shapes
:
*
seed

layer_1/truncated_normal/mulMul(layer_1/truncated_normal/TruncatedNormallayer_1/truncated_normal/stddev*
T0* 
_output_shapes
:


layer_1/truncated_normalAddlayer_1/truncated_normal/mullayer_1/truncated_normal/mean* 
_output_shapes
:
*
T0

	layer_1/W
VariableV2*
shared_name *
	container *
shape:
* 
_output_shapes
:
*
dtype0
Б
layer_1/W/AssignAssign	layer_1/Wlayer_1/truncated_normal*
use_locking(* 
_output_shapes
:
*
_class
loc:@layer_1/W*
T0*
validate_shape(
n
layer_1/W/readIdentity	layer_1/W* 
_output_shapes
:
*
T0*
_class
loc:@layer_1/W
\
layer_1/ConstConst*
_output_shapes	
:*
dtype0*
valueB*    
w
	layer_1/B
VariableV2*
dtype0*
_output_shapes	
:*
shape:*
shared_name *
	container 
Ё
layer_1/B/AssignAssign	layer_1/Blayer_1/Const*
use_locking(*
_output_shapes	
:*
validate_shape(*
_class
loc:@layer_1/B*
T0
i
layer_1/B/readIdentity	layer_1/B*
_output_shapes	
:*
_class
loc:@layer_1/B*
T0

layer_1/MatMulMatMulXlayer_1/W/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0*
transpose_a( 
e
layer_1/addAddlayer_1/MatMullayer_1/B/read*(
_output_shapes
:џџџџџџџџџ*
T0
T
layer_1/ReluRelulayer_1/add*
T0*(
_output_shapes
:џџџџџџџџџ
c
layer_1/weights/tagConst*
dtype0*
_output_shapes
: * 
valueB Blayer_1/weights
i
layer_1/weightsHistogramSummarylayer_1/weights/taglayer_1/W/read*
_output_shapes
: *
T0
a
layer_1/biases/tagConst*
_output_shapes
: *
dtype0*
valueB Blayer_1/biases
g
layer_1/biasesHistogramSummarylayer_1/biases/taglayer_1/B/read*
_output_shapes
: *
T0
W
dropout_layer/rateConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL>
_
dropout_layer/ShapeShapelayer_1/Relu*
_output_shapes
:*
out_type0*
T0
e
 dropout_layer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
e
 dropout_layer/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Њ
*dropout_layer/random_uniform/RandomUniformRandomUniformdropout_layer/Shape*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2*
T0*
seed

 dropout_layer/random_uniform/subSub dropout_layer/random_uniform/max dropout_layer/random_uniform/min*
_output_shapes
: *
T0
Ј
 dropout_layer/random_uniform/mulMul*dropout_layer/random_uniform/RandomUniform dropout_layer/random_uniform/sub*(
_output_shapes
:џџџџџџџџџ*
T0

dropout_layer/random_uniformAdd dropout_layer/random_uniform/mul dropout_layer/random_uniform/min*(
_output_shapes
:џџџџџџџџџ*
T0
X
dropout_layer/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
dropout_layer/subSubdropout_layer/sub/xdropout_layer/rate*
_output_shapes
: *
T0
\
dropout_layer/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
m
dropout_layer/truedivRealDivdropout_layer/truediv/xdropout_layer/sub*
_output_shapes
: *
T0

dropout_layer/GreaterEqualGreaterEqualdropout_layer/random_uniformdropout_layer/rate*(
_output_shapes
:џџџџџџџџџ*
T0
p
dropout_layer/mulMullayer_1/Reludropout_layer/truediv*
T0*(
_output_shapes
:џџџџџџџџџ

dropout_layer/CastCastdropout_layer/GreaterEqual*

SrcT0
*(
_output_shapes
:џџџџџџџџџ*

DstT0*
Truncate( 
t
dropout_layer/mul_1Muldropout_layer/muldropout_layer/Cast*(
_output_shapes
:џџџџџџџџџ*
T0
o
layer_2/truncated_normal/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
b
layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
layer_2/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬЬ=
Ќ
(layer_2/truncated_normal/TruncatedNormalTruncatedNormallayer_2/truncated_normal/shape*
T0*
_output_shapes
:	@*
dtype0*
seed2**
seed

layer_2/truncated_normal/mulMul(layer_2/truncated_normal/TruncatedNormallayer_2/truncated_normal/stddev*
T0*
_output_shapes
:	@

layer_2/truncated_normalAddlayer_2/truncated_normal/mullayer_2/truncated_normal/mean*
_output_shapes
:	@*
T0

	layer_2/W
VariableV2*
_output_shapes
:	@*
dtype0*
shared_name *
shape:	@*
	container 
А
layer_2/W/AssignAssign	layer_2/Wlayer_2/truncated_normal*
use_locking(*
_output_shapes
:	@*
_class
loc:@layer_2/W*
T0*
validate_shape(
m
layer_2/W/readIdentity	layer_2/W*
_output_shapes
:	@*
T0*
_class
loc:@layer_2/W
Z
layer_2/ConstConst*
_output_shapes
:@*
dtype0*
valueB@*    
u
	layer_2/B
VariableV2*
shared_name *
	container *
shape:@*
dtype0*
_output_shapes
:@
 
layer_2/B/AssignAssign	layer_2/Blayer_2/Const*
use_locking(*
_output_shapes
:@*
_class
loc:@layer_2/B*
T0*
validate_shape(
h
layer_2/B/readIdentity	layer_2/B*
_output_shapes
:@*
_class
loc:@layer_2/B*
T0

layer_2/MatMulMatMuldropout_layer/mul_1layer_2/W/read*'
_output_shapes
:џџџџџџџџџ@*
transpose_b( *
T0*
transpose_a( 
d
layer_2/addAddlayer_2/MatMullayer_2/B/read*'
_output_shapes
:џџџџџџџџџ@*
T0
S
layer_2/ReluRelulayer_2/add*'
_output_shapes
:џџџџџџџџџ@*
T0
c
layer_2/weights/tagConst* 
valueB Blayer_2/weights*
dtype0*
_output_shapes
: 
i
layer_2/weightsHistogramSummarylayer_2/weights/taglayer_2/W/read*
_output_shapes
: *
T0
a
layer_2/biases/tagConst*
valueB Blayer_2/biases*
dtype0*
_output_shapes
: 
g
layer_2/biasesHistogramSummarylayer_2/biases/taglayer_2/B/read*
_output_shapes
: *
T0
k
out/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   
   
^
out/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
`
out/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
_output_shapes
: *
dtype0
Ѓ
$out/truncated_normal/TruncatedNormalTruncatedNormalout/truncated_normal/shape*
dtype0*
_output_shapes

:@
*
seed2**
T0*
seed

out/truncated_normal/mulMul$out/truncated_normal/TruncatedNormalout/truncated_normal/stddev*
_output_shapes

:@
*
T0
y
out/truncated_normalAddout/truncated_normal/mulout/truncated_normal/mean*
T0*
_output_shapes

:@

y
out/W
VariableV2*
	container *
dtype0*
_output_shapes

:@
*
shared_name *
shape
:@


out/W/AssignAssignout/Wout/truncated_normal*
validate_shape(*
use_locking(*
_output_shapes

:@
*
_class

loc:@out/W*
T0
`

out/W/readIdentityout/W*
_output_shapes

:@
*
_class

loc:@out/W*
T0
V
	out/ConstConst*
_output_shapes
:
*
dtype0*
valueB
*    
q
out/B
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shared_name *
shape:


out/B/AssignAssignout/B	out/Const*
validate_shape(*
use_locking(*
_output_shapes
:
*
_class

loc:@out/B*
T0
\

out/B/readIdentityout/B*
_output_shapes
:
*
_class

loc:@out/B*
T0


out/MatMulMatMullayer_2/Relu
out/W/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
*
T0*
transpose_a( 
X
out/addAdd
out/MatMul
out/B/read*
T0*'
_output_shapes
:џџџџџџџџџ

Q
out/SoftmaxSoftmaxout/add*'
_output_shapes
:џџџџџџџџџ
*
T0
[
out/weights/tagConst*
_output_shapes
: *
valueB Bout/weights*
dtype0
]
out/weightsHistogramSummaryout/weights/tag
out/W/read*
T0*
_output_shapes
: 
Y
out/biases/tagConst*
_output_shapes
: *
valueB B
out/biases*
dtype0
[

out/biasesHistogramSummaryout/biases/tag
out/B/read*
_output_shapes
: *
T0
r
0loss_calc/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
value	B :*
dtype0
|
1loss_calc/softmax_cross_entropy_with_logits/ShapeShapeout/Softmax*
_output_shapes
:*
T0*
out_type0
t
2loss_calc/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
~
3loss_calc/softmax_cross_entropy_with_logits/Shape_1Shapeout/Softmax*
_output_shapes
:*
T0*
out_type0
s
1loss_calc/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
value	B :*
dtype0
О
/loss_calc/softmax_cross_entropy_with_logits/SubSub2loss_calc/softmax_cross_entropy_with_logits/Rank_11loss_calc/softmax_cross_entropy_with_logits/Sub/y*
_output_shapes
: *
T0
Њ
7loss_calc/softmax_cross_entropy_with_logits/Slice/beginPack/loss_calc/softmax_cross_entropy_with_logits/Sub*
_output_shapes
:*
N*
T0*

axis 

6loss_calc/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

1loss_calc/softmax_cross_entropy_with_logits/SliceSlice3loss_calc/softmax_cross_entropy_with_logits/Shape_17loss_calc/softmax_cross_entropy_with_logits/Slice/begin6loss_calc/softmax_cross_entropy_with_logits/Slice/size*
_output_shapes
:*
Index0*
T0

;loss_calc/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
y
7loss_calc/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ё
2loss_calc/softmax_cross_entropy_with_logits/concatConcatV2;loss_calc/softmax_cross_entropy_with_logits/concat/values_01loss_calc/softmax_cross_entropy_with_logits/Slice7loss_calc/softmax_cross_entropy_with_logits/concat/axis*
_output_shapes
:*
T0*
N*

Tidx0
Ш
3loss_calc/softmax_cross_entropy_with_logits/ReshapeReshapeout/Softmax2loss_calc/softmax_cross_entropy_with_logits/concat*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
T0
t
2loss_calc/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
value	B :*
dtype0
y
3loss_calc/softmax_cross_entropy_with_logits/Shape_2Shapelabels*
_output_shapes
:*
T0*
out_type0
u
3loss_calc/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
value	B :*
dtype0
Т
1loss_calc/softmax_cross_entropy_with_logits/Sub_1Sub2loss_calc/softmax_cross_entropy_with_logits/Rank_23loss_calc/softmax_cross_entropy_with_logits/Sub_1/y*
_output_shapes
: *
T0
Ў
9loss_calc/softmax_cross_entropy_with_logits/Slice_1/beginPack1loss_calc/softmax_cross_entropy_with_logits/Sub_1*
_output_shapes
:*

axis *
T0*
N

8loss_calc/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0

3loss_calc/softmax_cross_entropy_with_logits/Slice_1Slice3loss_calc/softmax_cross_entropy_with_logits/Shape_29loss_calc/softmax_cross_entropy_with_logits/Slice_1/begin8loss_calc/softmax_cross_entropy_with_logits/Slice_1/size*
_output_shapes
:*
Index0*
T0

=loss_calc/softmax_cross_entropy_with_logits/concat_1/values_0Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
{
9loss_calc/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Љ
4loss_calc/softmax_cross_entropy_with_logits/concat_1ConcatV2=loss_calc/softmax_cross_entropy_with_logits/concat_1/values_03loss_calc/softmax_cross_entropy_with_logits/Slice_19loss_calc/softmax_cross_entropy_with_logits/concat_1/axis*
_output_shapes
:*
T0*

Tidx0*
N
Ч
5loss_calc/softmax_cross_entropy_with_logits/Reshape_1Reshapelabels4loss_calc/softmax_cross_entropy_with_logits/concat_1*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*
Tshape0

+loss_calc/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits3loss_calc/softmax_cross_entropy_with_logits/Reshape5loss_calc/softmax_cross_entropy_with_logits/Reshape_1*?
_output_shapes-
+:џџџџџџџџџ:џџџџџџџџџџџџџџџџџџ*
T0
u
3loss_calc/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
value	B :*
dtype0
Р
1loss_calc/softmax_cross_entropy_with_logits/Sub_2Sub0loss_calc/softmax_cross_entropy_with_logits/Rank3loss_calc/softmax_cross_entropy_with_logits/Sub_2/y*
_output_shapes
: *
T0

9loss_calc/softmax_cross_entropy_with_logits/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB: 
­
8loss_calc/softmax_cross_entropy_with_logits/Slice_2/sizePack1loss_calc/softmax_cross_entropy_with_logits/Sub_2*
_output_shapes
:*
T0*

axis *
N

3loss_calc/softmax_cross_entropy_with_logits/Slice_2Slice1loss_calc/softmax_cross_entropy_with_logits/Shape9loss_calc/softmax_cross_entropy_with_logits/Slice_2/begin8loss_calc/softmax_cross_entropy_with_logits/Slice_2/size*
_output_shapes
:*
Index0*
T0
о
5loss_calc/softmax_cross_entropy_with_logits/Reshape_2Reshape+loss_calc/softmax_cross_entropy_with_logits3loss_calc/softmax_cross_entropy_with_logits/Slice_2*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Y
loss_calc/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

loss_calc/MeanMean5loss_calc/softmax_cross_entropy_with_logits/Reshape_2loss_calc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
\
optimizer/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
b
optimizer/gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ?

optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0

5optimizer/gradients/loss_calc/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
О
/optimizer/gradients/loss_calc/Mean_grad/ReshapeReshapeoptimizer/gradients/Fill5optimizer/gradients/loss_calc/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
Ђ
-optimizer/gradients/loss_calc/Mean_grad/ShapeShape5loss_calc/softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
out_type0*
T0
д
,optimizer/gradients/loss_calc/Mean_grad/TileTile/optimizer/gradients/loss_calc/Mean_grad/Reshape-optimizer/gradients/loss_calc/Mean_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Є
/optimizer/gradients/loss_calc/Mean_grad/Shape_1Shape5loss_calc/softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0
r
/optimizer/gradients/loss_calc/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
w
-optimizer/gradients/loss_calc/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
в
,optimizer/gradients/loss_calc/Mean_grad/ProdProd/optimizer/gradients/loss_calc/Mean_grad/Shape_1-optimizer/gradients/loss_calc/Mean_grad/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
y
/optimizer/gradients/loss_calc/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
ж
.optimizer/gradients/loss_calc/Mean_grad/Prod_1Prod/optimizer/gradients/loss_calc/Mean_grad/Shape_2/optimizer/gradients/loss_calc/Mean_grad/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
s
1optimizer/gradients/loss_calc/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
О
/optimizer/gradients/loss_calc/Mean_grad/MaximumMaximum.optimizer/gradients/loss_calc/Mean_grad/Prod_11optimizer/gradients/loss_calc/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
М
0optimizer/gradients/loss_calc/Mean_grad/floordivFloorDiv,optimizer/gradients/loss_calc/Mean_grad/Prod/optimizer/gradients/loss_calc/Mean_grad/Maximum*
T0*
_output_shapes
: 
І
,optimizer/gradients/loss_calc/Mean_grad/CastCast0optimizer/gradients/loss_calc/Mean_grad/floordiv*

DstT0*
Truncate( *

SrcT0*
_output_shapes
: 
Ф
/optimizer/gradients/loss_calc/Mean_grad/truedivRealDiv,optimizer/gradients/loss_calc/Mean_grad/Tile,optimizer/gradients/loss_calc/Mean_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
П
Toptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape+loss_calc/softmax_cross_entropy_with_logits*
T0*
_output_shapes
:*
out_type0
Є
Voptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape/optimizer/gradients/loss_calc/Mean_grad/truedivToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0

optimizer/gradients/zeros_like	ZerosLike-loss_calc/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Soptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ш
Ooptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsVoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeSoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ

Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulMulOoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims-loss_calc/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Э
Ooptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax3loss_calc/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
л
Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/NegNegOoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
 
Uoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Ь
Qoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsVoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeUoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:џџџџџџџџџ*

Tdim0
Љ
Joptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1MulQoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/Neg*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
ѕ
Uoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOpI^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulK^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1
Ѓ
]optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentityHoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulV^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Љ
_optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1IdentityJoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1V^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*]
_classS
QOloc:@optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1

Roptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeout/Softmax*
_output_shapes
:*
T0*
out_type0
в
Toptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshape]optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyRoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ф
(optimizer/gradients/out/Softmax_grad/mulMulToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshapeout/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0

:optimizer/gradients/out/Softmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
_output_shapes
: *
dtype0
ф
(optimizer/gradients/out/Softmax_grad/SumSum(optimizer/gradients/out/Softmax_grad/mul:optimizer/gradients/out/Softmax_grad/Sum/reduction_indices*
T0*

Tidx0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
с
(optimizer/gradients/out/Softmax_grad/subSubToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshape(optimizer/gradients/out/Softmax_grad/Sum*
T0*'
_output_shapes
:џџџџџџџџџ


*optimizer/gradients/out/Softmax_grad/mul_1Mul(optimizer/gradients/out/Softmax_grad/subout/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0
p
&optimizer/gradients/out/add_grad/ShapeShape
out/MatMul*
T0*
_output_shapes
:*
out_type0
r
(optimizer/gradients/out/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
о
6optimizer/gradients/out/add_grad/BroadcastGradientArgsBroadcastGradientArgs&optimizer/gradients/out/add_grad/Shape(optimizer/gradients/out/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Я
$optimizer/gradients/out/add_grad/SumSum*optimizer/gradients/out/Softmax_grad/mul_16optimizer/gradients/out/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
С
(optimizer/gradients/out/add_grad/ReshapeReshape$optimizer/gradients/out/add_grad/Sum&optimizer/gradients/out/add_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
*
Tshape0
г
&optimizer/gradients/out/add_grad/Sum_1Sum*optimizer/gradients/out/Softmax_grad/mul_18optimizer/gradients/out/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
К
*optimizer/gradients/out/add_grad/Reshape_1Reshape&optimizer/gradients/out/add_grad/Sum_1(optimizer/gradients/out/add_grad/Shape_1*
T0*
_output_shapes
:
*
Tshape0

1optimizer/gradients/out/add_grad/tuple/group_depsNoOp)^optimizer/gradients/out/add_grad/Reshape+^optimizer/gradients/out/add_grad/Reshape_1

9optimizer/gradients/out/add_grad/tuple/control_dependencyIdentity(optimizer/gradients/out/add_grad/Reshape2^optimizer/gradients/out/add_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ
*;
_class1
/-loc:@optimizer/gradients/out/add_grad/Reshape

;optimizer/gradients/out/add_grad/tuple/control_dependency_1Identity*optimizer/gradients/out/add_grad/Reshape_12^optimizer/gradients/out/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@optimizer/gradients/out/add_grad/Reshape_1*
_output_shapes
:

г
*optimizer/gradients/out/MatMul_grad/MatMulMatMul9optimizer/gradients/out/add_grad/tuple/control_dependency
out/W/read*
transpose_a( *
T0*
transpose_b(*'
_output_shapes
:џџџџџџџџџ@
Ю
,optimizer/gradients/out/MatMul_grad/MatMul_1MatMullayer_2/Relu9optimizer/gradients/out/add_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( *
_output_shapes

:@


4optimizer/gradients/out/MatMul_grad/tuple/group_depsNoOp+^optimizer/gradients/out/MatMul_grad/MatMul-^optimizer/gradients/out/MatMul_grad/MatMul_1

<optimizer/gradients/out/MatMul_grad/tuple/control_dependencyIdentity*optimizer/gradients/out/MatMul_grad/MatMul5^optimizer/gradients/out/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ@*
T0*=
_class3
1/loc:@optimizer/gradients/out/MatMul_grad/MatMul

>optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1Identity,optimizer/gradients/out/MatMul_grad/MatMul_15^optimizer/gradients/out/MatMul_grad/tuple/group_deps*
_output_shapes

:@
*
T0*?
_class5
31loc:@optimizer/gradients/out/MatMul_grad/MatMul_1
И
.optimizer/gradients/layer_2/Relu_grad/ReluGradReluGrad<optimizer/gradients/out/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*'
_output_shapes
:џџџџџџџџџ@
x
*optimizer/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
_output_shapes
:*
out_type0*
T0
v
,optimizer/gradients/layer_2/add_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@
ъ
:optimizer/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/layer_2/add_grad/Shape,optimizer/gradients/layer_2/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
л
(optimizer/gradients/layer_2/add_grad/SumSum.optimizer/gradients/layer_2/Relu_grad/ReluGrad:optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Э
,optimizer/gradients/layer_2/add_grad/ReshapeReshape(optimizer/gradients/layer_2/add_grad/Sum*optimizer/gradients/layer_2/add_grad/Shape*'
_output_shapes
:џџџџџџџџџ@*
Tshape0*
T0
п
*optimizer/gradients/layer_2/add_grad/Sum_1Sum.optimizer/gradients/layer_2/Relu_grad/ReluGrad<optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Ц
.optimizer/gradients/layer_2/add_grad/Reshape_1Reshape*optimizer/gradients/layer_2/add_grad/Sum_1,optimizer/gradients/layer_2/add_grad/Shape_1*
_output_shapes
:@*
Tshape0*
T0

5optimizer/gradients/layer_2/add_grad/tuple/group_depsNoOp-^optimizer/gradients/layer_2/add_grad/Reshape/^optimizer/gradients/layer_2/add_grad/Reshape_1
Ђ
=optimizer/gradients/layer_2/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/layer_2/add_grad/Reshape6^optimizer/gradients/layer_2/add_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ@*
T0*?
_class5
31loc:@optimizer/gradients/layer_2/add_grad/Reshape

?optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/layer_2/add_grad/Reshape_16^optimizer/gradients/layer_2/add_grad/tuple/group_deps*
_output_shapes
:@*
T0*A
_class7
53loc:@optimizer/gradients/layer_2/add_grad/Reshape_1
р
.optimizer/gradients/layer_2/MatMul_grad/MatMulMatMul=optimizer/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/W/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b(
о
0optimizer/gradients/layer_2/MatMul_grad/MatMul_1MatMuldropout_layer/mul_1=optimizer/gradients/layer_2/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	@*
T0*
transpose_b( 
Є
8optimizer/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp/^optimizer/gradients/layer_2/MatMul_grad/MatMul1^optimizer/gradients/layer_2/MatMul_grad/MatMul_1
­
@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity.optimizer/gradients/layer_2/MatMul_grad/MatMul9^optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*A
_class7
53loc:@optimizer/gradients/layer_2/MatMul_grad/MatMul
Њ
Boptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity0optimizer/gradients/layer_2/MatMul_grad/MatMul_19^optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	@*C
_class9
75loc:@optimizer/gradients/layer_2/MatMul_grad/MatMul_1

2optimizer/gradients/dropout_layer/mul_1_grad/ShapeShapedropout_layer/mul*
_output_shapes
:*
out_type0*
T0

4optimizer/gradients/dropout_layer/mul_1_grad/Shape_1Shapedropout_layer/Cast*
out_type0*
T0*
_output_shapes
:

Boptimizer/gradients/dropout_layer/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs2optimizer/gradients/dropout_layer/mul_1_grad/Shape4optimizer/gradients/dropout_layer/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
0optimizer/gradients/dropout_layer/mul_1_grad/MulMul@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencydropout_layer/Cast*(
_output_shapes
:џџџџџџџџџ*
T0
э
0optimizer/gradients/dropout_layer/mul_1_grad/SumSum0optimizer/gradients/dropout_layer/mul_1_grad/MulBoptimizer/gradients/dropout_layer/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
ц
4optimizer/gradients/dropout_layer/mul_1_grad/ReshapeReshape0optimizer/gradients/dropout_layer/mul_1_grad/Sum2optimizer/gradients/dropout_layer/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ
С
2optimizer/gradients/dropout_layer/mul_1_grad/Mul_1Muldropout_layer/mul@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:џџџџџџџџџ
ѓ
2optimizer/gradients/dropout_layer/mul_1_grad/Sum_1Sum2optimizer/gradients/dropout_layer/mul_1_grad/Mul_1Doptimizer/gradients/dropout_layer/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ь
6optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1Reshape2optimizer/gradients/dropout_layer/mul_1_grad/Sum_14optimizer/gradients/dropout_layer/mul_1_grad/Shape_1*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0
Е
=optimizer/gradients/dropout_layer/mul_1_grad/tuple/group_depsNoOp5^optimizer/gradients/dropout_layer/mul_1_grad/Reshape7^optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1
У
Eoptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependencyIdentity4optimizer/gradients/dropout_layer/mul_1_grad/Reshape>^optimizer/gradients/dropout_layer/mul_1_grad/tuple/group_deps*G
_class=
;9loc:@optimizer/gradients/dropout_layer/mul_1_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ
Щ
Goptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependency_1Identity6optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1>^optimizer/gradients/dropout_layer/mul_1_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*I
_class?
=;loc:@optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1*
T0
|
0optimizer/gradients/dropout_layer/mul_grad/ShapeShapelayer_1/Relu*
out_type0*
T0*
_output_shapes
:
u
2optimizer/gradients/dropout_layer/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ќ
@optimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgsBroadcastGradientArgs0optimizer/gradients/dropout_layer/mul_grad/Shape2optimizer/gradients/dropout_layer/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ц
.optimizer/gradients/dropout_layer/mul_grad/MulMulEoptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependencydropout_layer/truediv*(
_output_shapes
:џџџџџџџџџ*
T0
ч
.optimizer/gradients/dropout_layer/mul_grad/SumSum.optimizer/gradients/dropout_layer/mul_grad/Mul@optimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
р
2optimizer/gradients/dropout_layer/mul_grad/ReshapeReshape.optimizer/gradients/dropout_layer/mul_grad/Sum0optimizer/gradients/dropout_layer/mul_grad/Shape*
T0*(
_output_shapes
:џџџџџџџџџ*
Tshape0
П
0optimizer/gradients/dropout_layer/mul_grad/Mul_1Mullayer_1/ReluEoptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:џџџџџџџџџ
э
0optimizer/gradients/dropout_layer/mul_grad/Sum_1Sum0optimizer/gradients/dropout_layer/mul_grad/Mul_1Boptimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
д
4optimizer/gradients/dropout_layer/mul_grad/Reshape_1Reshape0optimizer/gradients/dropout_layer/mul_grad/Sum_12optimizer/gradients/dropout_layer/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Џ
;optimizer/gradients/dropout_layer/mul_grad/tuple/group_depsNoOp3^optimizer/gradients/dropout_layer/mul_grad/Reshape5^optimizer/gradients/dropout_layer/mul_grad/Reshape_1
Л
Coptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependencyIdentity2optimizer/gradients/dropout_layer/mul_grad/Reshape<^optimizer/gradients/dropout_layer/mul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*E
_class;
97loc:@optimizer/gradients/dropout_layer/mul_grad/Reshape*
T0
Џ
Eoptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependency_1Identity4optimizer/gradients/dropout_layer/mul_grad/Reshape_1<^optimizer/gradients/dropout_layer/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *G
_class=
;9loc:@optimizer/gradients/dropout_layer/mul_grad/Reshape_1
Р
.optimizer/gradients/layer_1/Relu_grad/ReluGradReluGradCoptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependencylayer_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
x
*optimizer/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
_output_shapes
:*
out_type0
w
,optimizer/gradients/layer_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ъ
:optimizer/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/layer_1/add_grad/Shape,optimizer/gradients/layer_1/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
л
(optimizer/gradients/layer_1/add_grad/SumSum.optimizer/gradients/layer_1/Relu_grad/ReluGrad:optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Ю
,optimizer/gradients/layer_1/add_grad/ReshapeReshape(optimizer/gradients/layer_1/add_grad/Sum*optimizer/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ
п
*optimizer/gradients/layer_1/add_grad/Sum_1Sum.optimizer/gradients/layer_1/Relu_grad/ReluGrad<optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
Ч
.optimizer/gradients/layer_1/add_grad/Reshape_1Reshape*optimizer/gradients/layer_1/add_grad/Sum_1,optimizer/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

5optimizer/gradients/layer_1/add_grad/tuple/group_depsNoOp-^optimizer/gradients/layer_1/add_grad/Reshape/^optimizer/gradients/layer_1/add_grad/Reshape_1
Ѓ
=optimizer/gradients/layer_1/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/layer_1/add_grad/Reshape6^optimizer/gradients/layer_1/add_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*?
_class5
31loc:@optimizer/gradients/layer_1/add_grad/Reshape*
T0

?optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/layer_1/add_grad/Reshape_16^optimizer/gradients/layer_1/add_grad/tuple/group_deps*
T0*
_output_shapes	
:*A
_class7
53loc:@optimizer/gradients/layer_1/add_grad/Reshape_1
р
.optimizer/gradients/layer_1/MatMul_grad/MatMulMatMul=optimizer/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/W/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
Э
0optimizer/gradients/layer_1/MatMul_grad/MatMul_1MatMulX=optimizer/gradients/layer_1/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

Є
8optimizer/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp/^optimizer/gradients/layer_1/MatMul_grad/MatMul1^optimizer/gradients/layer_1/MatMul_grad/MatMul_1
­
@optimizer/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity.optimizer/gradients/layer_1/MatMul_grad/MatMul9^optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*A
_class7
53loc:@optimizer/gradients/layer_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Ћ
Boptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity0optimizer/gradients/layer_1/MatMul_grad/MatMul_19^optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*C
_class9
75loc:@optimizer/gradients/layer_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:


#optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: *
_class
loc:@layer_1/B

optimizer/beta1_power
VariableV2*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@layer_1/B
Ъ
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_output_shapes
: *
_class
loc:@layer_1/B
|
optimizer/beta1_power/readIdentityoptimizer/beta1_power*
_class
loc:@layer_1/B*
T0*
_output_shapes
: 

#optimizer/beta2_power/initial_valueConst*
valueB
 *wО?*
_output_shapes
: *
dtype0*
_class
loc:@layer_1/B

optimizer/beta2_power
VariableV2*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@layer_1/B
Ъ
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
_class
loc:@layer_1/B*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
|
optimizer/beta2_power/readIdentityoptimizer/beta2_power*
_class
loc:@layer_1/B*
T0*
_output_shapes
: 

0layer_1/W/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@layer_1/W*
valueB"     *
dtype0*
_output_shapes
:

&layer_1/W/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
_class
loc:@layer_1/W*
valueB
 *    
н
 layer_1/W/Adam/Initializer/zerosFill0layer_1/W/Adam/Initializer/zeros/shape_as_tensor&layer_1/W/Adam/Initializer/zeros/Const*
T0*

index_type0* 
_output_shapes
:
*
_class
loc:@layer_1/W
Є
layer_1/W/Adam
VariableV2*
shape:
*
dtype0*
	container * 
_output_shapes
:
*
_class
loc:@layer_1/W*
shared_name 
У
layer_1/W/Adam/AssignAssignlayer_1/W/Adam layer_1/W/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
*
_class
loc:@layer_1/W
x
layer_1/W/Adam/readIdentitylayer_1/W/Adam* 
_output_shapes
:
*
T0*
_class
loc:@layer_1/W
Ё
2layer_1/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"     *
_output_shapes
:*
_class
loc:@layer_1/W

(layer_1/W/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@layer_1/W*
valueB
 *    *
_output_shapes
: *
dtype0
у
"layer_1/W/Adam_1/Initializer/zerosFill2layer_1/W/Adam_1/Initializer/zeros/shape_as_tensor(layer_1/W/Adam_1/Initializer/zeros/Const*

index_type0*
_class
loc:@layer_1/W*
T0* 
_output_shapes
:

І
layer_1/W/Adam_1
VariableV2* 
_output_shapes
:
*
shape:
*
dtype0*
_class
loc:@layer_1/W*
	container *
shared_name 
Щ
layer_1/W/Adam_1/AssignAssignlayer_1/W/Adam_1"layer_1/W/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@layer_1/W
|
layer_1/W/Adam_1/readIdentitylayer_1/W/Adam_1* 
_output_shapes
:
*
T0*
_class
loc:@layer_1/W

 layer_1/B/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@layer_1/B*
_output_shapes	
:*
dtype0

layer_1/B/Adam
VariableV2*
shared_name *
dtype0*
shape:*
_output_shapes	
:*
	container *
_class
loc:@layer_1/B
О
layer_1/B/Adam/AssignAssignlayer_1/B/Adam layer_1/B/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@layer_1/B
s
layer_1/B/Adam/readIdentitylayer_1/B/Adam*
_output_shapes	
:*
_class
loc:@layer_1/B*
T0

"layer_1/B/Adam_1/Initializer/zerosConst*
_class
loc:@layer_1/B*
valueB*    *
dtype0*
_output_shapes	
:

layer_1/B/Adam_1
VariableV2*
shared_name *
dtype0*
shape:*
_output_shapes	
:*
	container *
_class
loc:@layer_1/B
Ф
layer_1/B/Adam_1/AssignAssignlayer_1/B/Adam_1"layer_1/B/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@layer_1/B
w
layer_1/B/Adam_1/readIdentitylayer_1/B/Adam_1*
_output_shapes	
:*
_class
loc:@layer_1/B*
T0

0layer_2/W/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   *
_class
loc:@layer_2/W

&layer_2/W/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@layer_2/W
м
 layer_2/W/Adam/Initializer/zerosFill0layer_2/W/Adam/Initializer/zeros/shape_as_tensor&layer_2/W/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@layer_2/W*
_output_shapes
:	@
Ђ
layer_2/W/Adam
VariableV2*
shared_name *
dtype0*
_output_shapes
:	@*
shape:	@*
	container *
_class
loc:@layer_2/W
Т
layer_2/W/Adam/AssignAssignlayer_2/W/Adam layer_2/W/Adam/Initializer/zeros*
_class
loc:@layer_2/W*
T0*
validate_shape(*
_output_shapes
:	@*
use_locking(
w
layer_2/W/Adam/readIdentitylayer_2/W/Adam*
T0*
_class
loc:@layer_2/W*
_output_shapes
:	@
Ё
2layer_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@layer_2/W*
dtype0*
_output_shapes
:

(layer_2/W/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
_class
loc:@layer_2/W*
valueB
 *    
т
"layer_2/W/Adam_1/Initializer/zerosFill2layer_2/W/Adam_1/Initializer/zeros/shape_as_tensor(layer_2/W/Adam_1/Initializer/zeros/Const*
_output_shapes
:	@*
T0*
_class
loc:@layer_2/W*

index_type0
Є
layer_2/W/Adam_1
VariableV2*
	container *
dtype0*
_output_shapes
:	@*
shape:	@*
_class
loc:@layer_2/W*
shared_name 
Ш
layer_2/W/Adam_1/AssignAssignlayer_2/W/Adam_1"layer_2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@
{
layer_2/W/Adam_1/readIdentitylayer_2/W/Adam_1*
_output_shapes
:	@*
T0*
_class
loc:@layer_2/W

 layer_2/B/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *
_class
loc:@layer_2/B

layer_2/B/Adam
VariableV2*
_class
loc:@layer_2/B*
shared_name *
	container *
_output_shapes
:@*
shape:@*
dtype0
Н
layer_2/B/Adam/AssignAssignlayer_2/B/Adam layer_2/B/Adam/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
_class
loc:@layer_2/B*
validate_shape(
r
layer_2/B/Adam/readIdentitylayer_2/B/Adam*
_output_shapes
:@*
T0*
_class
loc:@layer_2/B

"layer_2/B/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@layer_2/B*
dtype0*
_output_shapes
:@

layer_2/B/Adam_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
shape:@*
	container *
_class
loc:@layer_2/B
У
layer_2/B/Adam_1/AssignAssignlayer_2/B/Adam_1"layer_2/B/Adam_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@layer_2/B*
T0
v
layer_2/B/Adam_1/readIdentitylayer_2/B/Adam_1*
_class
loc:@layer_2/B*
T0*
_output_shapes
:@

out/W/Adam/Initializer/zerosConst*
valueB@
*    *
_class

loc:@out/W*
dtype0*
_output_shapes

:@



out/W/Adam
VariableV2*
_class

loc:@out/W*
shared_name *
	container *
_output_shapes

:@
*
shape
:@
*
dtype0
Б
out/W/Adam/AssignAssign
out/W/Adamout/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

j
out/W/Adam/readIdentity
out/W/Adam*
_class

loc:@out/W*
T0*
_output_shapes

:@


out/W/Adam_1/Initializer/zerosConst*
valueB@
*    *
_class

loc:@out/W*
dtype0*
_output_shapes

:@


out/W/Adam_1
VariableV2*
_class

loc:@out/W*
shared_name *
	container *
_output_shapes

:@
*
shape
:@
*
dtype0
З
out/W/Adam_1/AssignAssignout/W/Adam_1out/W/Adam_1/Initializer/zeros*
_class

loc:@out/W*
T0*
validate_shape(*
_output_shapes

:@
*
use_locking(
n
out/W/Adam_1/readIdentityout/W/Adam_1*
T0*
_class

loc:@out/W*
_output_shapes

:@


out/B/Adam/Initializer/zerosConst*
_class

loc:@out/B*
valueB
*    *
_output_shapes
:
*
dtype0


out/B/Adam
VariableV2*
_class

loc:@out/B*
shared_name *
	container *
_output_shapes
:
*
shape:
*
dtype0
­
out/B/Adam/AssignAssign
out/B/Adamout/B/Adam/Initializer/zeros*
_class

loc:@out/B*
T0*
validate_shape(*
_output_shapes
:
*
use_locking(
f
out/B/Adam/readIdentity
out/B/Adam*
_class

loc:@out/B*
T0*
_output_shapes
:


out/B/Adam_1/Initializer/zerosConst*
valueB
*    *
_class

loc:@out/B*
dtype0*
_output_shapes
:


out/B/Adam_1
VariableV2*
	container *
dtype0*
_output_shapes
:
*
shape:
*
_class

loc:@out/B*
shared_name 
Г
out/B/Adam_1/AssignAssignout/B/Adam_1out/B/Adam_1/Initializer/zeros*
T0*
_output_shapes
:
*
use_locking(*
_class

loc:@out/B*
validate_shape(
j
out/B/Adam_1/readIdentityout/B/Adam_1*
_output_shapes
:
*
_class

loc:@out/B*
T0
a
optimizer/Adam/learning_rateConst*
valueB
 *Зб8*
dtype0*
_output_shapes
: 
Y
optimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Y
optimizer/Adam/beta2Const*
dtype0*
valueB
 *wО?*
_output_shapes
: 
[
optimizer/Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
Б
)optimizer/Adam/update_layer_1/W/ApplyAdam	ApplyAdam	layer_1/Wlayer_1/W/Adamlayer_1/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
*
use_locking( *
_class
loc:@layer_1/W*
T0*
use_nesterov( 
Љ
)optimizer/Adam/update_layer_1/B/ApplyAdam	ApplyAdam	layer_1/Blayer_1/B/Adamlayer_1/B/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1*
_output_shapes	
:*
use_locking( *
_class
loc:@layer_1/B*
T0*
use_nesterov( 
А
)optimizer/Adam/update_layer_2/W/ApplyAdam	ApplyAdam	layer_2/Wlayer_2/W/Adamlayer_2/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	@*
use_locking( *
_class
loc:@layer_2/W*
T0*
use_nesterov( 
Ј
)optimizer/Adam/update_layer_2/B/ApplyAdam	ApplyAdam	layer_2/Blayer_2/B/Adamlayer_2/B/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:@*
T0*
use_nesterov( *
_class
loc:@layer_2/B

%optimizer/Adam/update_out/W/ApplyAdam	ApplyAdamout/W
out/W/Adamout/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon>optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_class

loc:@out/W*
_output_shapes

:@
*
use_locking( *
T0

%optimizer/Adam/update_out/B/ApplyAdam	ApplyAdamout/B
out/B/Adamout/B/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon;optimizer/gradients/out/add_grad/tuple/control_dependency_1*
_class

loc:@out/B*
T0*
use_nesterov( *
_output_shapes
:
*
use_locking( 

optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta1*^optimizer/Adam/update_layer_1/B/ApplyAdam*^optimizer/Adam/update_layer_1/W/ApplyAdam*^optimizer/Adam/update_layer_2/B/ApplyAdam*^optimizer/Adam/update_layer_2/W/ApplyAdam&^optimizer/Adam/update_out/B/ApplyAdam&^optimizer/Adam/update_out/W/ApplyAdam*
_class
loc:@layer_1/B*
T0*
_output_shapes
: 
В
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
use_locking( *
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 

optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta2*^optimizer/Adam/update_layer_1/B/ApplyAdam*^optimizer/Adam/update_layer_1/W/ApplyAdam*^optimizer/Adam/update_layer_2/B/ApplyAdam*^optimizer/Adam/update_layer_2/W/ApplyAdam&^optimizer/Adam/update_out/B/ApplyAdam&^optimizer/Adam/update_out/W/ApplyAdam*
_class
loc:@layer_1/B*
T0*
_output_shapes
: 
Ж
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
use_locking( *
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
Ш
optimizer/AdamNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_1*^optimizer/Adam/update_layer_1/B/ApplyAdam*^optimizer/Adam/update_layer_1/W/ApplyAdam*^optimizer/Adam/update_layer_2/B/ApplyAdam*^optimizer/Adam/update_layer_2/W/ApplyAdam&^optimizer/Adam/update_out/B/ApplyAdam&^optimizer/Adam/update_out/W/ApplyAdam
d
"accuracy_calc/prediction/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
 
accuracy_calc/predictionArgMaxout/Softmax"accuracy_calc/prediction/dimension*
output_type0	*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
`
accuracy_calc/ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0

accuracy_calc/ArgMaxArgMaxlabelsaccuracy_calc/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ*
output_type0	
z
accuracy_calc/EqualEqualaccuracy_calc/predictionaccuracy_calc/ArgMax*#
_output_shapes
:џџџџџџџџџ*
T0	
|
accuracy_calc/CastCastaccuracy_calc/Equal*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0*
Truncate( 
]
accuracy_calc/ConstConst*
dtype0*
valueB: *
_output_shapes
:

accuracy_calc/MeanMeanaccuracy_calc/Castaccuracy_calc/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
n
performance/accuracy/tagsConst*%
valueB Bperformance/accuracy*
dtype0*
_output_shapes
: 
u
performance/accuracyScalarSummaryperformance/accuracy/tagsaccuracy_calc/Mean*
T0*
_output_shapes
: 
f
performance/cost/tagsConst*!
valueB Bperformance/cost*
_output_shapes
: *
dtype0
i
performance/costScalarSummaryperformance/cost/tagsloss_calc/Mean*
_output_shapes
: *
T0
q
show_image/Reshape/shapeConst*
dtype0*%
valueB"џџџџ         *
_output_shapes
:

show_image/ReshapeReshapeXshow_image/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
q
show_image/image_input/tagConst*
dtype0*'
valueB Bshow_image/image_input*
_output_shapes
: 
Њ
show_image/image_inputImageSummaryshow_image/image_input/tagshow_image/Reshape*

max_images*
	bad_colorB:џ  џ*
T0*
_output_shapes
: 
о
Merge/MergeSummaryMergeSummarylayer_1/weightslayer_1/biaseslayer_2/weightslayer_2/biasesout/weights
out/biasesperformance/accuracyperformance/costshow_image/image_input*
_output_shapes
: *
N	
а
initNoOp^layer_1/B/Adam/Assign^layer_1/B/Adam_1/Assign^layer_1/B/Assign^layer_1/W/Adam/Assign^layer_1/W/Adam_1/Assign^layer_1/W/Assign^layer_2/B/Adam/Assign^layer_2/B/Adam_1/Assign^layer_2/B/Assign^layer_2/W/Adam/Assign^layer_2/W/Adam_1/Assign^layer_2/W/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign^out/B/Adam/Assign^out/B/Adam_1/Assign^out/B/Assign^out/W/Adam/Assign^out/W/Adam_1/Assign^out/W/Assign
Y
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: *
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_972210d3b3e34c3886ed8e0e2eaa90df/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*Й
valueЏBЌB	layer_1/BBlayer_1/B/AdamBlayer_1/B/Adam_1B	layer_1/WBlayer_1/W/AdamBlayer_1/W/Adam_1B	layer_2/BBlayer_2/B/AdamBlayer_2/B/Adam_1B	layer_2/WBlayer_2/W/AdamBlayer_2/W/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_powerBout/BB
out/B/AdamBout/B/Adam_1Bout/WB
out/W/AdamBout/W/Adam_1*
_output_shapes
:*
dtype0

save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
Ћ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices	layer_1/Blayer_1/B/Adamlayer_1/B/Adam_1	layer_1/Wlayer_1/W/Adamlayer_1/W/Adam_1	layer_2/Blayer_2/B/Adamlayer_2/B/Adam_1	layer_2/Wlayer_2/W/Adamlayer_2/W/Adam_1optimizer/beta1_poweroptimizer/beta2_powerout/B
out/B/Adamout/B/Adam_1out/W
out/W/Adamout/W/Adam_1*"
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*
T0*

axis *
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst*
_output_shapes
:*Й
valueЏBЌB	layer_1/BBlayer_1/B/AdamBlayer_1/B/Adam_1B	layer_1/WBlayer_1/W/AdamBlayer_1/W/Adam_1B	layer_2/BBlayer_2/B/AdamBlayer_2/B/Adam_1B	layer_2/WBlayer_2/W/AdamBlayer_2/W/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_powerBout/BB
out/B/AdamBout/B/Adam_1Bout/WB
out/W/AdamBout/W/Adam_1*
dtype0

save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
я
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*"
dtypes
2*d
_output_shapesR
P::::::::::::::::::::

save/AssignAssign	layer_1/Bsave/RestoreV2*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*
_class
loc:@layer_1/B
І
save/Assign_1Assignlayer_1/B/Adamsave/RestoreV2:1*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(*
_class
loc:@layer_1/B
Ј
save/Assign_2Assignlayer_1/B/Adam_1save/RestoreV2:2*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*
_class
loc:@layer_1/B
І
save/Assign_3Assign	layer_1/Wsave/RestoreV2:3* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(*
_class
loc:@layer_1/W
Ћ
save/Assign_4Assignlayer_1/W/Adamsave/RestoreV2:4* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(*
_class
loc:@layer_1/W
­
save/Assign_5Assignlayer_1/W/Adam_1save/RestoreV2:5*
_class
loc:@layer_1/W*
T0*
validate_shape(* 
_output_shapes
:
*
use_locking(
 
save/Assign_6Assign	layer_2/Bsave/RestoreV2:6*
validate_shape(*
_class
loc:@layer_2/B*
_output_shapes
:@*
use_locking(*
T0
Ѕ
save/Assign_7Assignlayer_2/B/Adamsave/RestoreV2:7*
T0*
validate_shape(*
_class
loc:@layer_2/B*
_output_shapes
:@*
use_locking(
Ї
save/Assign_8Assignlayer_2/B/Adam_1save/RestoreV2:8*
validate_shape(*
_class
loc:@layer_2/B*
_output_shapes
:@*
T0*
use_locking(
Ѕ
save/Assign_9Assign	layer_2/Wsave/RestoreV2:9*
T0*
validate_shape(*
_class
loc:@layer_2/W*
_output_shapes
:	@*
use_locking(
Ќ
save/Assign_10Assignlayer_2/W/Adamsave/RestoreV2:10*
T0*
validate_shape(*
_class
loc:@layer_2/W*
_output_shapes
:	@*
use_locking(
Ў
save/Assign_11Assignlayer_2/W/Adam_1save/RestoreV2:11*
validate_shape(*
_class
loc:@layer_2/W*
_output_shapes
:	@*
T0*
use_locking(
Њ
save/Assign_12Assignoptimizer/beta1_powersave/RestoreV2:12*
validate_shape(*
_class
loc:@layer_1/B*
_output_shapes
: *
use_locking(*
T0
Њ
save/Assign_13Assignoptimizer/beta2_powersave/RestoreV2:13*
T0*
validate_shape(*
_class
loc:@layer_1/B*
_output_shapes
: *
use_locking(

save/Assign_14Assignout/Bsave/RestoreV2:14*
_output_shapes
:
*
T0*
use_locking(*
_class

loc:@out/B*
validate_shape(

save/Assign_15Assign
out/B/Adamsave/RestoreV2:15*
_class

loc:@out/B*
T0*
validate_shape(*
_output_shapes
:
*
use_locking(
Ё
save/Assign_16Assignout/B/Adam_1save/RestoreV2:16*
_output_shapes
:
*
use_locking(*
_class

loc:@out/B*
T0*
validate_shape(

save/Assign_17Assignout/Wsave/RestoreV2:17*
_output_shapes

:@
*
use_locking(*
_class

loc:@out/W*
T0*
validate_shape(
Ѓ
save/Assign_18Assign
out/W/Adamsave/RestoreV2:18*
_output_shapes

:@
*
use_locking(*
_class

loc:@out/W*
T0*
validate_shape(
Ѕ
save/Assign_19Assignout/W/Adam_1save/RestoreV2:19*
_output_shapes

:@
*
use_locking(*
_class

loc:@out/W*
T0*
validate_shape(
т
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"Р
trainable_variablesЈЅ
O
layer_1/W:0layer_1/W/Assignlayer_1/W/read:02layer_1/truncated_normal:08
D
layer_1/B:0layer_1/B/Assignlayer_1/B/read:02layer_1/Const:08
O
layer_2/W:0layer_2/W/Assignlayer_2/W/read:02layer_2/truncated_normal:08
D
layer_2/B:0layer_2/B/Assignlayer_2/B/read:02layer_2/Const:08
?
out/W:0out/W/Assignout/W/read:02out/truncated_normal:08
4
out/B:0out/B/Assignout/B/read:02out/Const:08"
train_op

optimizer/Adam"ъ
	variablesмй
O
layer_1/W:0layer_1/W/Assignlayer_1/W/read:02layer_1/truncated_normal:08
D
layer_1/B:0layer_1/B/Assignlayer_1/B/read:02layer_1/Const:08
O
layer_2/W:0layer_2/W/Assignlayer_2/W/read:02layer_2/truncated_normal:08
D
layer_2/B:0layer_2/B/Assignlayer_2/B/read:02layer_2/Const:08
?
out/W:0out/W/Assignout/W/read:02out/truncated_normal:08
4
out/B:0out/B/Assignout/B/read:02out/Const:08
|
optimizer/beta1_power:0optimizer/beta1_power/Assignoptimizer/beta1_power/read:02%optimizer/beta1_power/initial_value:0
|
optimizer/beta2_power:0optimizer/beta2_power/Assignoptimizer/beta2_power/read:02%optimizer/beta2_power/initial_value:0
d
layer_1/W/Adam:0layer_1/W/Adam/Assignlayer_1/W/Adam/read:02"layer_1/W/Adam/Initializer/zeros:0
l
layer_1/W/Adam_1:0layer_1/W/Adam_1/Assignlayer_1/W/Adam_1/read:02$layer_1/W/Adam_1/Initializer/zeros:0
d
layer_1/B/Adam:0layer_1/B/Adam/Assignlayer_1/B/Adam/read:02"layer_1/B/Adam/Initializer/zeros:0
l
layer_1/B/Adam_1:0layer_1/B/Adam_1/Assignlayer_1/B/Adam_1/read:02$layer_1/B/Adam_1/Initializer/zeros:0
d
layer_2/W/Adam:0layer_2/W/Adam/Assignlayer_2/W/Adam/read:02"layer_2/W/Adam/Initializer/zeros:0
l
layer_2/W/Adam_1:0layer_2/W/Adam_1/Assignlayer_2/W/Adam_1/read:02$layer_2/W/Adam_1/Initializer/zeros:0
d
layer_2/B/Adam:0layer_2/B/Adam/Assignlayer_2/B/Adam/read:02"layer_2/B/Adam/Initializer/zeros:0
l
layer_2/B/Adam_1:0layer_2/B/Adam_1/Assignlayer_2/B/Adam_1/read:02$layer_2/B/Adam_1/Initializer/zeros:0
T
out/W/Adam:0out/W/Adam/Assignout/W/Adam/read:02out/W/Adam/Initializer/zeros:0
\
out/W/Adam_1:0out/W/Adam_1/Assignout/W/Adam_1/read:02 out/W/Adam_1/Initializer/zeros:0
T
out/B/Adam:0out/B/Adam/Assignout/B/Adam/read:02out/B/Adam/Initializer/zeros:0
\
out/B/Adam_1:0out/B/Adam_1/Assignout/B/Adam_1/read:02 out/B/Adam_1/Initializer/zeros:0"О
	summariesА
­
layer_1/weights:0
layer_1/biases:0
layer_2/weights:0
layer_2/biases:0
out/weights:0
out/biases:0
performance/accuracy:0
performance/cost:0
show_image/image_input:0*
serving_default
 
X
X:0џџџџџџџџџI
accuracy_calc/prediction-
accuracy_calc/prediction:0	џџџџџџџџџtensorflow/serving/predict