??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
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
delete_old_dirsbool(?
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
?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ӫ
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

:n*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
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
?
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*'
shared_nameAdam/dense_38/kernel/m
?
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes

:n*
dtype0
?
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:n*
dtype0
?
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*'
shared_nameAdam/dense_38/kernel/v
?
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes

:n*
dtype0
?
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:n*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
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
?
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
?
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
_Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_38/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
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
?
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
?|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_lambda_18_inputPlaceholder*+
_output_shapes
:?????????
*
dtype0* 
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_18_inputdense_38/kerneldense_38/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_159149
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOpConst*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_159300
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_38/kerneldense_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_38/kernel/vAdam/dense_38/bias/v*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_159355??
?
a
E__inference_lambda_18_layer_call_and_return_conditional_losses_159167

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
F
*__inference_lambda_18_layer_call_fn_159154

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_18_layer_call_and_return_conditional_losses_158872d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
F
*__inference_lambda_18_layer_call_fn_159159

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_18_layer_call_and_return_conditional_losses_158965d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?/
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159138

inputs<
*dense_38_tensordot_readvariableop_resource:n6
(dense_38_biasadd_readvariableop_resource:n
identity??dense_38/BiasAdd/ReadVariableOp?!dense_38/Tensordot/ReadVariableOpr
lambda_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    t
lambda_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            t
lambda_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda_18/strided_sliceStridedSliceinputs&lambda_18/strided_slice/stack:output:0(lambda_18/strided_slice/stack_1:output:0(lambda_18/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_mask?
!dense_38/Tensordot/ReadVariableOpReadVariableOp*dense_38_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0a
dense_38/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_38/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       h
dense_38/Tensordot/ShapeShape lambda_18/strided_slice:output:0*
T0*
_output_shapes
:b
 dense_38/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/GatherV2GatherV2!dense_38/Tensordot/Shape:output:0 dense_38/Tensordot/free:output:0)dense_38/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_38/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/GatherV2_1GatherV2!dense_38/Tensordot/Shape:output:0 dense_38/Tensordot/axes:output:0+dense_38/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_38/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_38/Tensordot/ProdProd$dense_38/Tensordot/GatherV2:output:0!dense_38/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_38/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_38/Tensordot/Prod_1Prod&dense_38/Tensordot/GatherV2_1:output:0#dense_38/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_38/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/concatConcatV2 dense_38/Tensordot/free:output:0 dense_38/Tensordot/axes:output:0'dense_38/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_38/Tensordot/stackPack dense_38/Tensordot/Prod:output:0"dense_38/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_38/Tensordot/transpose	Transpose lambda_18/strided_slice:output:0"dense_38/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_38/Tensordot/ReshapeReshape dense_38/Tensordot/transpose:y:0!dense_38/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_38/Tensordot/MatMulMatMul#dense_38/Tensordot/Reshape:output:0)dense_38/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????nd
dense_38/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nb
 dense_38/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/concat_1ConcatV2$dense_38/Tensordot/GatherV2:output:0#dense_38/Tensordot/Const_2:output:0)dense_38/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_38/TensordotReshape#dense_38/Tensordot/MatMul:product:0$dense_38/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????n?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0?
dense_38/BiasAddBiasAdddense_38/Tensordot:output:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????nY
reshape_22/ShapeShapedense_38/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
\
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_22/ReshapeReshapedense_38/BiasAdd:output:0!reshape_22/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????
n
IdentityIdentityreshape_22/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????
?
NoOpNoOp ^dense_38/BiasAdd/ReadVariableOp"^dense_38/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2F
!dense_38/Tensordot/ReadVariableOp!dense_38/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
)__inference_dense_38_layer_call_fn_159184

inputs
unknown:n
	unknown_0:n
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_158904s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_158926

inputs!
dense_38_158905:n
dense_38_158907:n
identity?? dense_38/StatefulPartitionedCall?
lambda_18/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_18_layer_call_and_return_conditional_losses_158872?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0dense_38_158905dense_38_158907*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_158904?
reshape_22/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_22_layer_call_and_return_conditional_losses_158923v
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
i
NoOpNoOp!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
.__inference_sequential_22_layer_call_fn_159043

inputs
unknown:n
	unknown_0:n
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_158926s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?

b
F__inference_reshape_22_layer_call_and_return_conditional_losses_159232

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
valueB:?
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
value	B :?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????
\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????n:S O
+
_output_shapes
:?????????n
 
_user_specified_nameinputs
?
a
E__inference_lambda_18_layer_call_and_return_conditional_losses_158872

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?9
?
!__inference__wrapped_model_158857
lambda_18_inputJ
8sequential_22_dense_38_tensordot_readvariableop_resource:nD
6sequential_22_dense_38_biasadd_readvariableop_resource:n
identity??-sequential_22/dense_38/BiasAdd/ReadVariableOp?/sequential_22/dense_38/Tensordot/ReadVariableOp?
+sequential_22/lambda_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    ?
-sequential_22/lambda_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            ?
-sequential_22/lambda_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
%sequential_22/lambda_18/strided_sliceStridedSlicelambda_18_input4sequential_22/lambda_18/strided_slice/stack:output:06sequential_22/lambda_18/strided_slice/stack_1:output:06sequential_22/lambda_18/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_mask?
/sequential_22/dense_38/Tensordot/ReadVariableOpReadVariableOp8sequential_22_dense_38_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0o
%sequential_22/dense_38/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_22/dense_38/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
&sequential_22/dense_38/Tensordot/ShapeShape.sequential_22/lambda_18/strided_slice:output:0*
T0*
_output_shapes
:p
.sequential_22/dense_38/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_22/dense_38/Tensordot/GatherV2GatherV2/sequential_22/dense_38/Tensordot/Shape:output:0.sequential_22/dense_38/Tensordot/free:output:07sequential_22/dense_38/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_22/dense_38/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
+sequential_22/dense_38/Tensordot/GatherV2_1GatherV2/sequential_22/dense_38/Tensordot/Shape:output:0.sequential_22/dense_38/Tensordot/axes:output:09sequential_22/dense_38/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_22/dense_38/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_22/dense_38/Tensordot/ProdProd2sequential_22/dense_38/Tensordot/GatherV2:output:0/sequential_22/dense_38/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_22/dense_38/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
'sequential_22/dense_38/Tensordot/Prod_1Prod4sequential_22/dense_38/Tensordot/GatherV2_1:output:01sequential_22/dense_38/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_22/dense_38/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_22/dense_38/Tensordot/concatConcatV2.sequential_22/dense_38/Tensordot/free:output:0.sequential_22/dense_38/Tensordot/axes:output:05sequential_22/dense_38/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
&sequential_22/dense_38/Tensordot/stackPack.sequential_22/dense_38/Tensordot/Prod:output:00sequential_22/dense_38/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
*sequential_22/dense_38/Tensordot/transpose	Transpose.sequential_22/lambda_18/strided_slice:output:00sequential_22/dense_38/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
(sequential_22/dense_38/Tensordot/ReshapeReshape.sequential_22/dense_38/Tensordot/transpose:y:0/sequential_22/dense_38/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
'sequential_22/dense_38/Tensordot/MatMulMatMul1sequential_22/dense_38/Tensordot/Reshape:output:07sequential_22/dense_38/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????nr
(sequential_22/dense_38/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:np
.sequential_22/dense_38/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_22/dense_38/Tensordot/concat_1ConcatV22sequential_22/dense_38/Tensordot/GatherV2:output:01sequential_22/dense_38/Tensordot/Const_2:output:07sequential_22/dense_38/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
 sequential_22/dense_38/TensordotReshape1sequential_22/dense_38/Tensordot/MatMul:product:02sequential_22/dense_38/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????n?
-sequential_22/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_38_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0?
sequential_22/dense_38/BiasAddBiasAdd)sequential_22/dense_38/Tensordot:output:05sequential_22/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????nu
sequential_22/reshape_22/ShapeShape'sequential_22/dense_38/BiasAdd:output:0*
T0*
_output_shapes
:v
,sequential_22/reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_22/reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_22/reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_22/reshape_22/strided_sliceStridedSlice'sequential_22/reshape_22/Shape:output:05sequential_22/reshape_22/strided_slice/stack:output:07sequential_22/reshape_22/strided_slice/stack_1:output:07sequential_22/reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_22/reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
j
(sequential_22/reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
&sequential_22/reshape_22/Reshape/shapePack/sequential_22/reshape_22/strided_slice:output:01sequential_22/reshape_22/Reshape/shape/1:output:01sequential_22/reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
 sequential_22/reshape_22/ReshapeReshape'sequential_22/dense_38/BiasAdd:output:0/sequential_22/reshape_22/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????
|
IdentityIdentity)sequential_22/reshape_22/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????
?
NoOpNoOp.^sequential_22/dense_38/BiasAdd/ReadVariableOp0^sequential_22/dense_38/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2^
-sequential_22/dense_38/BiasAdd/ReadVariableOp-sequential_22/dense_38/BiasAdd/ReadVariableOp2b
/sequential_22/dense_38/Tensordot/ReadVariableOp/sequential_22/dense_38/Tensordot/ReadVariableOp:\ X
+
_output_shapes
:?????????

)
_user_specified_namelambda_18_input
?
?
.__inference_sequential_22_layer_call_fn_159052

inputs
unknown:n
	unknown_0:n
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_158990s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_159149
lambda_18_input
unknown:n
	unknown_0:n
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_18_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_158857s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????

)
_user_specified_namelambda_18_input
?

b
F__inference_reshape_22_layer_call_and_return_conditional_losses_158923

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
valueB:?
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
value	B :?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????
\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????n:S O
+
_output_shapes
:?????????n
 
_user_specified_nameinputs
?'
?
__inference__traced_save_159300
file_prefix.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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
?
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159017
lambda_18_input!
dense_38_159010:n
dense_38_159012:n
identity?? dense_38/StatefulPartitionedCall?
lambda_18/PartitionedCallPartitionedCalllambda_18_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_18_layer_call_and_return_conditional_losses_158872?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0dense_38_159010dense_38_159012*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_158904?
reshape_22/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_22_layer_call_and_return_conditional_losses_158923v
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
i
NoOpNoOp!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:\ X
+
_output_shapes
:?????????

)
_user_specified_namelambda_18_input
?
?
D__inference_dense_38_layer_call_and_return_conditional_losses_159214

inputs3
!tensordot_readvariableop_resource:n-
biasadd_readvariableop_resource:n
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
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
value	B : ?
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
value	B : ?
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
value	B : ?
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
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????nc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????nz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?/
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159095

inputs<
*dense_38_tensordot_readvariableop_resource:n6
(dense_38_biasadd_readvariableop_resource:n
identity??dense_38/BiasAdd/ReadVariableOp?!dense_38/Tensordot/ReadVariableOpr
lambda_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    t
lambda_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            t
lambda_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda_18/strided_sliceStridedSliceinputs&lambda_18/strided_slice/stack:output:0(lambda_18/strided_slice/stack_1:output:0(lambda_18/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_mask?
!dense_38/Tensordot/ReadVariableOpReadVariableOp*dense_38_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0a
dense_38/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_38/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       h
dense_38/Tensordot/ShapeShape lambda_18/strided_slice:output:0*
T0*
_output_shapes
:b
 dense_38/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/GatherV2GatherV2!dense_38/Tensordot/Shape:output:0 dense_38/Tensordot/free:output:0)dense_38/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_38/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/GatherV2_1GatherV2!dense_38/Tensordot/Shape:output:0 dense_38/Tensordot/axes:output:0+dense_38/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_38/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_38/Tensordot/ProdProd$dense_38/Tensordot/GatherV2:output:0!dense_38/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_38/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_38/Tensordot/Prod_1Prod&dense_38/Tensordot/GatherV2_1:output:0#dense_38/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_38/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/concatConcatV2 dense_38/Tensordot/free:output:0 dense_38/Tensordot/axes:output:0'dense_38/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_38/Tensordot/stackPack dense_38/Tensordot/Prod:output:0"dense_38/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_38/Tensordot/transpose	Transpose lambda_18/strided_slice:output:0"dense_38/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_38/Tensordot/ReshapeReshape dense_38/Tensordot/transpose:y:0!dense_38/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_38/Tensordot/MatMulMatMul#dense_38/Tensordot/Reshape:output:0)dense_38/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????nd
dense_38/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nb
 dense_38/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_38/Tensordot/concat_1ConcatV2$dense_38/Tensordot/GatherV2:output:0#dense_38/Tensordot/Const_2:output:0)dense_38/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_38/TensordotReshape#dense_38/Tensordot/MatMul:product:0$dense_38/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????n?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0?
dense_38/BiasAddBiasAdddense_38/Tensordot:output:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????nY
reshape_22/ShapeShapedense_38/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
\
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_22/ReshapeReshapedense_38/BiasAdd:output:0!reshape_22/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????
n
IdentityIdentityreshape_22/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????
?
NoOpNoOp ^dense_38/BiasAdd/ReadVariableOp"^dense_38/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2F
!dense_38/Tensordot/ReadVariableOp!dense_38/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
D__inference_dense_38_layer_call_and_return_conditional_losses_158904

inputs3
!tensordot_readvariableop_resource:n-
biasadd_readvariableop_resource:n
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
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
value	B : ?
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
value	B : ?
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
value	B : ?
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
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:nY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????nc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????nz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?=
?
"__inference__traced_restore_159355
file_prefix2
 assignvariableop_dense_38_kernel:n.
 assignvariableop_1_dense_38_bias:n&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: <
*assignvariableop_11_adam_dense_38_kernel_m:n6
(assignvariableop_12_adam_dense_38_bias_m:n<
*assignvariableop_13_adam_dense_38_kernel_v:n6
(assignvariableop_14_adam_dense_38_bias_v:n
identity_16??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_38_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_38_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp*assignvariableop_11_adam_dense_38_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_dense_38_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_dense_38_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_dense_38_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: ?
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
?
?
.__inference_sequential_22_layer_call_fn_159006
lambda_18_input
unknown:n
	unknown_0:n
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_18_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_158990s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????

)
_user_specified_namelambda_18_input
?
?
.__inference_sequential_22_layer_call_fn_158933
lambda_18_input
unknown:n
	unknown_0:n
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_18_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_158926s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????

)
_user_specified_namelambda_18_input
?
a
E__inference_lambda_18_layer_call_and_return_conditional_losses_159175

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159028
lambda_18_input!
dense_38_159021:n
dense_38_159023:n
identity?? dense_38/StatefulPartitionedCall?
lambda_18/PartitionedCallPartitionedCalllambda_18_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_18_layer_call_and_return_conditional_losses_158965?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0dense_38_159021dense_38_159023*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_158904?
reshape_22/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_22_layer_call_and_return_conditional_losses_158923v
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
i
NoOpNoOp!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:\ X
+
_output_shapes
:?????????

)
_user_specified_namelambda_18_input
?
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_158990

inputs!
dense_38_158983:n
dense_38_158985:n
identity?? dense_38/StatefulPartitionedCall?
lambda_18/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_18_layer_call_and_return_conditional_losses_158965?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0dense_38_158983dense_38_158985*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_158904?
reshape_22/PartitionedCallPartitionedCall)dense_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_22_layer_call_and_return_conditional_losses_158923v
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
i
NoOpNoOp!^dense_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
: : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
a
E__inference_lambda_18_layer_call_and_return_conditional_losses_158965

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ????    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
:S O
+
_output_shapes
:?????????

 
_user_specified_nameinputs
?
G
+__inference_reshape_22_layer_call_fn_159219

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_22_layer_call_and_return_conditional_losses_158923d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????n:S O
+
_output_shapes
:?????????n
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
lambda_18_input<
!serving_default_lambda_18_input:0?????????
B

reshape_224
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:?N
?
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
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
?
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
?2?
.__inference_sequential_22_layer_call_fn_158933
.__inference_sequential_22_layer_call_fn_159043
.__inference_sequential_22_layer_call_fn_159052
.__inference_sequential_22_layer_call_fn_159006?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159095
I__inference_sequential_22_layer_call_and_return_conditional_losses_159138
I__inference_sequential_22_layer_call_and_return_conditional_losses_159017
I__inference_sequential_22_layer_call_and_return_conditional_losses_159028?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_158857lambda_18_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?
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
?2?
*__inference_lambda_18_layer_call_fn_159154
*__inference_lambda_18_layer_call_fn_159159?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lambda_18_layer_call_and_return_conditional_losses_159167
E__inference_lambda_18_layer_call_and_return_conditional_losses_159175?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:n2dense_38/kernel
:n2dense_38/bias
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
?
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
?2?
)__inference_dense_38_layer_call_fn_159184?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_38_layer_call_and_return_conditional_losses_159214?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
+__inference_reshape_22_layer_call_fn_159219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_reshape_22_layer_call_and_return_conditional_losses_159232?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
$__inference_signature_wrapper_159149lambda_18_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
&:$n2Adam/dense_38/kernel/m
 :n2Adam/dense_38/bias/m
&:$n2Adam/dense_38/kernel/v
 :n2Adam/dense_38/bias/v?
!__inference__wrapped_model_158857<?9
2?/
-?*
lambda_18_input?????????

? ";?8
6

reshape_22(?%

reshape_22?????????
?
D__inference_dense_38_layer_call_and_return_conditional_losses_159214d3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????n
? ?
)__inference_dense_38_layer_call_fn_159184W3?0
)?&
$?!
inputs?????????
? "??????????n?
E__inference_lambda_18_layer_call_and_return_conditional_losses_159167h;?8
1?.
$?!
inputs?????????


 
p 
? ")?&
?
0?????????
? ?
E__inference_lambda_18_layer_call_and_return_conditional_losses_159175h;?8
1?.
$?!
inputs?????????


 
p
? ")?&
?
0?????????
? ?
*__inference_lambda_18_layer_call_fn_159154[;?8
1?.
$?!
inputs?????????


 
p 
? "???????????
*__inference_lambda_18_layer_call_fn_159159[;?8
1?.
$?!
inputs?????????


 
p
? "???????????
F__inference_reshape_22_layer_call_and_return_conditional_losses_159232`3?0
)?&
$?!
inputs?????????n
? ")?&
?
0?????????

? ?
+__inference_reshape_22_layer_call_fn_159219S3?0
)?&
$?!
inputs?????????n
? "??????????
?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159017uD?A
:?7
-?*
lambda_18_input?????????

p 

 
? ")?&
?
0?????????

? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159028uD?A
:?7
-?*
lambda_18_input?????????

p

 
? ")?&
?
0?????????

? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159095l;?8
1?.
$?!
inputs?????????

p 

 
? ")?&
?
0?????????

? ?
I__inference_sequential_22_layer_call_and_return_conditional_losses_159138l;?8
1?.
$?!
inputs?????????

p

 
? ")?&
?
0?????????

? ?
.__inference_sequential_22_layer_call_fn_158933hD?A
:?7
-?*
lambda_18_input?????????

p 

 
? "??????????
?
.__inference_sequential_22_layer_call_fn_159006hD?A
:?7
-?*
lambda_18_input?????????

p

 
? "??????????
?
.__inference_sequential_22_layer_call_fn_159043_;?8
1?.
$?!
inputs?????????

p 

 
? "??????????
?
.__inference_sequential_22_layer_call_fn_159052_;?8
1?.
$?!
inputs?????????

p

 
? "??????????
?
$__inference_signature_wrapper_159149?O?L
? 
E?B
@
lambda_18_input-?*
lambda_18_input?????????
";?8
6

reshape_22(?%

reshape_22?????????
