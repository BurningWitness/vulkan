{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Ext.VK_EXT_video_encode_h265
  ( pattern VK_EXT_VIDEO_ENCODE_H265_SPEC_VERSION
  , pattern VK_EXT_VIDEO_ENCODE_H265_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_CAPABILITIES_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_VCL_FRAME_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_DPB_SLOT_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_EMIT_PICTURE_PARAMETERS_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_PROFILE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_REFERENCE_LISTS_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_EXT
  , pattern VK_VIDEO_CODEC_OPERATION_ENCODE_H265_BIT_EXT
  , VkVideoEncodeH265CapabilityFlagBitsEXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SEPARATE_COLOUR_PLANE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SCALING_LISTS_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SAMPLE_ADAPTIVE_OFFSET_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_PCM_ENABLE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SPS_TEMPORAL_MVP_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_HRD_COMPLIANCE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_INIT_QP_MINUS26_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_LOG2_PARALLEL_MERGE_LEVEL_MINUS2_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SIGN_DATA_HIDING_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSFORM_SKIP_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSFORM_SKIP_DISABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_PRED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_BIPRED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_PRED_NO_TABLE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSQUANT_BYPASS_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_ENTROPY_CODING_SYNC_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DEBLOCKING_FILTER_OVERRIDE_ENABLED_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILE_PER_FRAME_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_SLICE_PER_TILE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILE_PER_SLICE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SLICE_SEGMENT_CTB_COUNT_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_ROW_UNALIGNED_SLICE_SEGMENT_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DEPENDENT_SLICE_SEGMENT_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_EXT
  , VkVideoEncodeH265CapabilityFlagsEXT
  , VkVideoEncodeH265InputModeFlagBitsEXT
  , pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_FRAME_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_SLICE_SEGMENT_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_NON_VCL_BIT_EXT
  , VkVideoEncodeH265InputModeFlagsEXT
  , VkVideoEncodeH265OutputModeFlagBitsEXT
  , pattern VK_VIDEO_ENCODE_H265_OUTPUT_MODE_FRAME_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_OUTPUT_MODE_SLICE_SEGMENT_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_OUTPUT_MODE_NON_VCL_BIT_EXT
  , VkVideoEncodeH265OutputModeFlagsEXT
  , VkVideoEncodeH265CtbSizeFlagBitsEXT
  , pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_16_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_32_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_64_BIT_EXT
  , VkVideoEncodeH265CtbSizeFlagsEXT
  , VkVideoEncodeH265TransformBlockSizeFlagBitsEXT
  , pattern VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_4_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_8_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_16_BIT_EXT
  , pattern VK_VIDEO_ENCODE_H265_TRANSFORM_BLOCK_SIZE_32_BIT_EXT
  , VkVideoEncodeH265TransformBlockSizeFlagsEXT
  , VkVideoEncodeH265CapabilitiesEXT (..)
  , VkVideoEncodeH265SessionParametersCreateInfoEXT (..)
  , VkVideoEncodeH265SessionParametersAddInfoEXT (..)
  , VkVideoEncodeH265VclFrameInfoEXT (..)
  , VkVideoEncodeH265EmitPictureParametersInfoEXT (..)
  , VkVideoEncodeH265DpbSlotInfoEXT (..)
  , VkVideoEncodeH265NaluSliceSegmentInfoEXT (..)
  , VkVideoEncodeH265ProfileInfoEXT (..)
  , VkVideoEncodeH265ReferenceListsInfoEXT (..)
  , VkVideoEncodeH265RateControlInfoEXT (..)
  , VkVideoEncodeH265RateControlStructureEXT
  , pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_UNKNOWN_EXT
  , pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_FLAT_EXT
  , pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_DYADIC_EXT
  , VkVideoEncodeH265RateControlLayerInfoEXT (..)
  , VkVideoEncodeH265QpEXT (..)
  , VkVideoEncodeH265FrameSizeEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCodecOperationFlagBitsKHR
import Vulkan.Types.Enum.VkVideoEncodeH265CapabilityFlagBitsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265CapabilityFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265CtbSizeFlagBitsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265CtbSizeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265InputModeFlagBitsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265InputModeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265OutputModeFlagBitsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265OutputModeFlagsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265RateControlStructureEXT
import Vulkan.Types.Enum.VkVideoEncodeH265TransformBlockSizeFlagBitsEXT
import Vulkan.Types.Enum.VkVideoEncodeH265TransformBlockSizeFlagsEXT
import Vulkan.Types.Struct.VkVideoEncodeH265CapabilitiesEXT
import Vulkan.Types.Struct.VkVideoEncodeH265DpbSlotInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265EmitPictureParametersInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265FrameSizeEXT
import Vulkan.Types.Struct.VkVideoEncodeH265NaluSliceSegmentInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265ProfileInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265QpEXT
import Vulkan.Types.Struct.VkVideoEncodeH265RateControlInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265RateControlLayerInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265ReferenceListsInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersAddInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersCreateInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH265VclFrameInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_VIDEO_ENCODE_H265_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_VIDEO_ENCODE_H265_SPEC_VERSION = 9

pattern VK_EXT_VIDEO_ENCODE_H265_EXTENSION_NAME :: CString
pattern VK_EXT_VIDEO_ENCODE_H265_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_VIDEO_ENCODE_H265_EXTENSION_NAME = Ptr ("VK_EXT_video_encode_h265\0"##)

#else

module Vulkan.Ext.VK_EXT_video_encode_h265 where

#endif