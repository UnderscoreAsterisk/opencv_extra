
a
keras_mobilenet_head_conv_inputPlaceholder*
dtype0*$
shape:���������
�
 keras_mobilenet_head_conv/kernelConst*a
valueXBV"@��@>�V>"��>�6	<@��<����:��$>ibL?�k%��Q?��Z=�cZ?�T	�?��˽*
dtype0
�
%keras_mobilenet_head_conv/kernel/readIdentity keras_mobilenet_head_conv/kernel*
T0*3
_class)
'%loc:@keras_mobilenet_head_conv/kernel
[
keras_mobilenet_head_conv/biasConst*
dtype0*%
valueB"                
�
#keras_mobilenet_head_conv/bias/readIdentitykeras_mobilenet_head_conv/bias*
T0*1
_class'
%#loc:@keras_mobilenet_head_conv/bias
�
 keras_mobilenet_head_conv/Conv2DConv2Dkeras_mobilenet_head_conv_input%keras_mobilenet_head_conv/kernel/read*
use_cudnn_on_gpu(*
paddingVALID*
	dilations
*
T0*
data_formatNHWC*
strides

�
!keras_mobilenet_head_conv/BiasAddBiasAdd keras_mobilenet_head_conv/Conv2D#keras_mobilenet_head_conv/bias/read*
T0*
data_formatNHWC
e
0keras_mobilenet_head_pool/Mean/reduction_indicesConst*
valueB"      *
dtype0
�
keras_mobilenet_head_pool/MeanMean!keras_mobilenet_head_conv/BiasAdd0keras_mobilenet_head_pool/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
d
"keras_mobilenet_head_reshape/ShapeShapekeras_mobilenet_head_pool/Mean*
T0*
out_type0
^
0keras_mobilenet_head_reshape/strided_slice/stackConst*
valueB: *
dtype0
`
2keras_mobilenet_head_reshape/strided_slice/stack_1Const*
valueB:*
dtype0
`
2keras_mobilenet_head_reshape/strided_slice/stack_2Const*
valueB:*
dtype0
�
*keras_mobilenet_head_reshape/strided_sliceStridedSlice"keras_mobilenet_head_reshape/Shape0keras_mobilenet_head_reshape/strided_slice/stack2keras_mobilenet_head_reshape/strided_slice/stack_12keras_mobilenet_head_reshape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
V
,keras_mobilenet_head_reshape/Reshape/shape/1Const*
value	B :*
dtype0
V
,keras_mobilenet_head_reshape/Reshape/shape/2Const*
value	B :*
dtype0
V
,keras_mobilenet_head_reshape/Reshape/shape/3Const*
value	B :*
dtype0
�
*keras_mobilenet_head_reshape/Reshape/shapePack*keras_mobilenet_head_reshape/strided_slice,keras_mobilenet_head_reshape/Reshape/shape/1,keras_mobilenet_head_reshape/Reshape/shape/2,keras_mobilenet_head_reshape/Reshape/shape/3*
T0*

axis *
N
�
$keras_mobilenet_head_reshape/ReshapeReshapekeras_mobilenet_head_pool/Mean*keras_mobilenet_head_reshape/Reshape/shape*
T0*
Tshape0 