
®ÿ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68â¦
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:n*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:n*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:n*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:n*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:n*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:n*
dtype0

NoOpNoOp
Í
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueþBû Bô

layer-0
layer_with_weights-0
layer-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
h
!iter

"beta_1

#beta_2
	$decay
%learning_ratemFmGvHvI*

0
1*

0
1*
* 
°
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

+serving_default* 
* 
* 
* 

,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

;0
<1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	=total
	>count
?	variables
@	keras_api*
H
	Atotal
	Bcount
C
_fn_kwargs
D	variables
E	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

A0
B1*

D	variables*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lambda_3_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

Þ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_3_inputdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_38216
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_38367
ÿ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_38422Þ
ç
Æ
G__inference_sequential_3_layer_call_and_return_conditional_losses_37993

inputs
dense_3_37972:n
dense_3_37974:n
identity¢dense_3/StatefulPartitionedCall»
lambda_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_37939
dense_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0dense_3_37972dense_3_37974*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_37971ß
reshape_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_37990u
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
«
D
(__inference_lambda_3_layer_call_fn_38226

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_38032d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
À

#__inference_signature_wrapper_38216
lambda_3_input
unknown:n
	unknown_0:n
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCalllambda_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_37924s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(
_user_specified_namelambda_3_input
Þ

`
D__inference_reshape_3_layer_call_and_return_conditional_losses_38299

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿn:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
 
_user_specified_nameinputs
/

G__inference_sequential_3_layer_call_and_return_conditional_losses_38162

inputs;
)dense_3_tensordot_readvariableop_resource:n5
'dense_3_biasadd_readvariableop_resource:n
identity¢dense_3/BiasAdd/ReadVariableOp¢ dense_3/Tensordot/ReadVariableOpq
lambda_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    s
lambda_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
lambda_3/strided_sliceStridedSliceinputs%lambda_3/strided_slice/stack:output:0'lambda_3/strided_slice/stack_1:output:0'lambda_3/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       f
dense_3/Tensordot/ShapeShapelambda_3/strided_slice:output:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
dense_3/Tensordot/transpose	Transposelambda_3/strided_slice:output:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿnc
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:na
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnW
reshape_3/ShapeShapedense_3/BiasAdd:output:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshapedense_3/BiasAdd:output:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
m
IdentityIdentityreshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ø

,__inference_sequential_3_layer_call_fn_38119

inputs
unknown:n
	unknown_0:n
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_38057s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¼
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_37939

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         è
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Þ

`
D__inference_reshape_3_layer_call_and_return_conditional_losses_37990

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿn:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
 
_user_specified_nameinputs
Ø

,__inference_sequential_3_layer_call_fn_38110

inputs
unknown:n
	unknown_0:n
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_37993s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ç
Æ
G__inference_sequential_3_layer_call_and_return_conditional_losses_38057

inputs
dense_3_38050:n
dense_3_38052:n
identity¢dense_3/StatefulPartitionedCall»
lambda_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_38032
dense_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0dense_3_38050dense_3_38052*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_37971ß
reshape_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_37990u
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
/

G__inference_sequential_3_layer_call_and_return_conditional_losses_38205

inputs;
)dense_3_tensordot_readvariableop_resource:n5
'dense_3_biasadd_readvariableop_resource:n
identity¢dense_3/BiasAdd/ReadVariableOp¢ dense_3/Tensordot/ReadVariableOpq
lambda_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    s
lambda_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
lambda_3/strided_sliceStridedSliceinputs%lambda_3/strided_slice/stack:output:0'lambda_3/strided_slice/stack_1:output:0'lambda_3/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       f
dense_3/Tensordot/ShapeShapelambda_3/strided_slice:output:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
dense_3/Tensordot/transpose	Transposelambda_3/strided_slice:output:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿnc
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:na
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnW
reshape_3/ShapeShapedense_3/BiasAdd:output:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshapedense_3/BiasAdd:output:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
m
IdentityIdentityreshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
É
ù
B__inference_dense_3_layer_call_and_return_conditional_losses_37971

inputs3
!tensordot_readvariableop_resource:n-
biasadd_readvariableop_resource:n
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_38032

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         è
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Î

'__inference_dense_3_layer_call_fn_38251

inputs
unknown:n
	unknown_0:n
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_37971s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
E
)__inference_reshape_3_layer_call_fn_38286

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_37990d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿn:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
 
_user_specified_nameinputs
É
ù
B__inference_dense_3_layer_call_and_return_conditional_losses_38281

inputs3
!tensordot_readvariableop_resource:n-
biasadd_readvariableop_resource:n
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_38242

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         è
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ú&

__inference__traced_save_38367
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ª
value BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ¯
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Y
_input_shapesH
F: :n:n: : : : : : : : : :n:n:n:n: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:n: 

_output_shapes
:n:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n: 

_output_shapes
:n:$ 

_output_shapes

:n: 

_output_shapes
:n:

_output_shapes
: 
ð
¡
,__inference_sequential_3_layer_call_fn_38000
lambda_3_input
unknown:n
	unknown_0:n
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCalllambda_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_37993s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(
_user_specified_namelambda_3_input
¹8
³
 __inference__wrapped_model_37924
lambda_3_inputH
6sequential_3_dense_3_tensordot_readvariableop_resource:nB
4sequential_3_dense_3_biasadd_readvariableop_resource:n
identity¢+sequential_3/dense_3/BiasAdd/ReadVariableOp¢-sequential_3/dense_3/Tensordot/ReadVariableOp~
)sequential_3/lambda_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    
+sequential_3/lambda_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            
+sequential_3/lambda_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         È
#sequential_3/lambda_3/strided_sliceStridedSlicelambda_3_input2sequential_3/lambda_3/strided_slice/stack:output:04sequential_3/lambda_3/strided_slice/stack_1:output:04sequential_3/lambda_3/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask¤
-sequential_3/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_3_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0m
#sequential_3/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_3/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
$sequential_3/dense_3/Tensordot/ShapeShape,sequential_3/lambda_3/strided_slice:output:0*
T0*
_output_shapes
:n
,sequential_3/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_3/dense_3/Tensordot/GatherV2GatherV2-sequential_3/dense_3/Tensordot/Shape:output:0,sequential_3/dense_3/Tensordot/free:output:05sequential_3/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_3/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_3/dense_3/Tensordot/GatherV2_1GatherV2-sequential_3/dense_3/Tensordot/Shape:output:0,sequential_3/dense_3/Tensordot/axes:output:07sequential_3/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_3/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_3/dense_3/Tensordot/ProdProd0sequential_3/dense_3/Tensordot/GatherV2:output:0-sequential_3/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_3/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_3/dense_3/Tensordot/Prod_1Prod2sequential_3/dense_3/Tensordot/GatherV2_1:output:0/sequential_3/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_3/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_3/dense_3/Tensordot/concatConcatV2,sequential_3/dense_3/Tensordot/free:output:0,sequential_3/dense_3/Tensordot/axes:output:03sequential_3/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_3/dense_3/Tensordot/stackPack,sequential_3/dense_3/Tensordot/Prod:output:0.sequential_3/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:É
(sequential_3/dense_3/Tensordot/transpose	Transpose,sequential_3/lambda_3/strided_slice:output:0.sequential_3/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
&sequential_3/dense_3/Tensordot/ReshapeReshape,sequential_3/dense_3/Tensordot/transpose:y:0-sequential_3/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_3/dense_3/Tensordot/MatMulMatMul/sequential_3/dense_3/Tensordot/Reshape:output:05sequential_3/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿnp
&sequential_3/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nn
,sequential_3/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_3/dense_3/Tensordot/concat_1ConcatV20sequential_3/dense_3/Tensordot/GatherV2:output:0/sequential_3/dense_3/Tensordot/Const_2:output:05sequential_3/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_3/dense_3/TensordotReshape/sequential_3/dense_3/Tensordot/MatMul:product:00sequential_3/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0»
sequential_3/dense_3/BiasAddBiasAdd'sequential_3/dense_3/Tensordot:output:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿnq
sequential_3/reshape_3/ShapeShape%sequential_3/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:t
*sequential_3/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_3/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_3/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_3/reshape_3/strided_sliceStridedSlice%sequential_3/reshape_3/Shape:output:03sequential_3/reshape_3/strided_slice/stack:output:05sequential_3/reshape_3/strided_slice/stack_1:output:05sequential_3/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_3/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
h
&sequential_3/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ë
$sequential_3/reshape_3/Reshape/shapePack-sequential_3/reshape_3/strided_slice:output:0/sequential_3/reshape_3/Reshape/shape/1:output:0/sequential_3/reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:µ
sequential_3/reshape_3/ReshapeReshape%sequential_3/dense_3/BiasAdd:output:0-sequential_3/reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
IdentityIdentity'sequential_3/reshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
NoOpNoOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp.^sequential_3/dense_3/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2^
-sequential_3/dense_3/Tensordot/ReadVariableOp-sequential_3/dense_3/Tensordot/ReadVariableOp:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(
_user_specified_namelambda_3_input
¼
_
C__inference_lambda_3_layer_call_and_return_conditional_losses_38234

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ÿÿÿÿ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         è
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
«
D
(__inference_lambda_3_layer_call_fn_38221

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_37939d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¿=
»
!__inference__traced_restore_38422
file_prefix1
assignvariableop_dense_3_kernel:n-
assignvariableop_1_dense_3_bias:n&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: ;
)assignvariableop_11_adam_dense_3_kernel_m:n5
'assignvariableop_12_adam_dense_3_bias_m:n;
)assignvariableop_13_adam_dense_3_kernel_v:n5
'assignvariableop_14_adam_dense_3_bias_v:n
identity_16¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ª
value BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp)assignvariableop_11_adam_dense_3_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp'assignvariableop_12_adam_dense_3_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_dense_3_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_3_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ÿ
Î
G__inference_sequential_3_layer_call_and_return_conditional_losses_38084
lambda_3_input
dense_3_38077:n
dense_3_38079:n
identity¢dense_3/StatefulPartitionedCallÃ
lambda_3/PartitionedCallPartitionedCalllambda_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_37939
dense_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0dense_3_38077dense_3_38079*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_37971ß
reshape_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_37990u
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(
_user_specified_namelambda_3_input
ð
¡
,__inference_sequential_3_layer_call_fn_38073
lambda_3_input
unknown:n
	unknown_0:n
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCalllambda_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_38057s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(
_user_specified_namelambda_3_input
ÿ
Î
G__inference_sequential_3_layer_call_and_return_conditional_losses_38095
lambda_3_input
dense_3_38088:n
dense_3_38090:n
identity¢dense_3/StatefulPartitionedCallÃ
lambda_3/PartitionedCallPartitionedCalllambda_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lambda_3_layer_call_and_return_conditional_losses_38032
dense_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0dense_3_38088dense_3_38090*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_37971ß
reshape_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_37990u
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(
_user_specified_namelambda_3_input"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Â
serving_default®
M
lambda_3_input;
 serving_default_lambda_3_input:0ÿÿÿÿÿÿÿÿÿ
A
	reshape_34
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:N
§
layer-0
layer_with_weights-0
layer-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
w
!iter

"beta_1

#beta_2
	$decay
%learning_ratemFmGvHvI"
	optimizer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
þ2û
,__inference_sequential_3_layer_call_fn_38000
,__inference_sequential_3_layer_call_fn_38110
,__inference_sequential_3_layer_call_fn_38119
,__inference_sequential_3_layer_call_fn_38073À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_3_layer_call_and_return_conditional_losses_38162
G__inference_sequential_3_layer_call_and_return_conditional_losses_38205
G__inference_sequential_3_layer_call_and_return_conditional_losses_38084
G__inference_sequential_3_layer_call_and_return_conditional_losses_38095À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÒBÏ
 __inference__wrapped_model_37924lambda_3_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
+serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
(__inference_lambda_3_layer_call_fn_38221
(__inference_lambda_3_layer_call_fn_38226À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
C__inference_lambda_3_layer_call_and_return_conditional_losses_38234
C__inference_lambda_3_layer_call_and_return_conditional_losses_38242À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 :n2dense_3/kernel
:n2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_3_layer_call_fn_38251¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_38281¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_reshape_3_layer_call_fn_38286¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_reshape_3_layer_call_and_return_conditional_losses_38299¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÑBÎ
#__inference_signature_wrapper_38216lambda_3_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	=total
	>count
?	variables
@	keras_api"
_tf_keras_metric
^
	Atotal
	Bcount
C
_fn_kwargs
D	variables
E	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
=0
>1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
-
D	variables"
_generic_user_object
%:#n2Adam/dense_3/kernel/m
:n2Adam/dense_3/bias/m
%:#n2Adam/dense_3/kernel/v
:n2Adam/dense_3/bias/v 
 __inference__wrapped_model_37924|;¢8
1¢.
,)
lambda_3_inputÿÿÿÿÿÿÿÿÿ

ª "9ª6
4
	reshape_3'$
	reshape_3ÿÿÿÿÿÿÿÿÿ
ª
B__inference_dense_3_layer_call_and_return_conditional_losses_38281d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿn
 
'__inference_dense_3_layer_call_fn_38251W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿn¯
C__inference_lambda_3_layer_call_and_return_conditional_losses_38234h;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¯
C__inference_lambda_3_layer_call_and_return_conditional_losses_38242h;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_lambda_3_layer_call_fn_38221[;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lambda_3_layer_call_fn_38226[;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p
ª "ÿÿÿÿÿÿÿÿÿ¨
D__inference_reshape_3_layer_call_and_return_conditional_losses_38299`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿn
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ

 
)__inference_reshape_3_layer_call_fn_38286S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿn
ª "ÿÿÿÿÿÿÿÿÿ
¿
G__inference_sequential_3_layer_call_and_return_conditional_losses_38084tC¢@
9¢6
,)
lambda_3_inputÿÿÿÿÿÿÿÿÿ

p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ

 ¿
G__inference_sequential_3_layer_call_and_return_conditional_losses_38095tC¢@
9¢6
,)
lambda_3_inputÿÿÿÿÿÿÿÿÿ

p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ

 ·
G__inference_sequential_3_layer_call_and_return_conditional_losses_38162l;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ

 ·
G__inference_sequential_3_layer_call_and_return_conditional_losses_38205l;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ

 
,__inference_sequential_3_layer_call_fn_38000gC¢@
9¢6
,)
lambda_3_inputÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ

,__inference_sequential_3_layer_call_fn_38073gC¢@
9¢6
,)
lambda_3_inputÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ

,__inference_sequential_3_layer_call_fn_38110_;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ

,__inference_sequential_3_layer_call_fn_38119_;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ
¶
#__inference_signature_wrapper_38216M¢J
¢ 
Cª@
>
lambda_3_input,)
lambda_3_inputÿÿÿÿÿÿÿÿÿ
"9ª6
4
	reshape_3'$
	reshape_3ÿÿÿÿÿÿÿÿÿ
