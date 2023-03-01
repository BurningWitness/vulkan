{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Ext.VK_KHR_video_decode_h264
  ( pattern VK_KHR_VIDEO_DECODE_H264_SPEC_VERSION
  , pattern VK_KHR_VIDEO_DECODE_H264_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_CAPABILITIES_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PICTURE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PROFILE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_DPB_SLOT_INFO_KHR
  , pattern VK_VIDEO_CODEC_OPERATION_DECODE_H264_BIT_KHR
  , VkVideoDecodeH264PictureLayoutFlagBitsKHR
  , pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_PROGRESSIVE_KHR
  , pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_INTERLEAVED_LINES_BIT_KHR
  , pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_SEPARATE_PLANES_BIT_KHR
  , VkVideoDecodeH264PictureLayoutFlagsKHR
  , VkVideoDecodeH264ProfileInfoKHR (..)
  , VkVideoDecodeH264CapabilitiesKHR (..)
  , VkVideoDecodeH264SessionParametersCreateInfoKHR (..)
  , VkVideoDecodeH264SessionParametersAddInfoKHR (..)
  , VkVideoDecodeH264PictureInfoKHR (..)
  , VkVideoDecodeH264DpbSlotInfoKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCodecOperationFlagBitsKHR
import Vulkan.Types.Enum.VkVideoDecodeH264PictureLayoutFlagBitsKHR
import Vulkan.Types.Enum.VkVideoDecodeH264PictureLayoutFlagsKHR
import Vulkan.Types.Struct.VkVideoDecodeH264CapabilitiesKHR
import Vulkan.Types.Struct.VkVideoDecodeH264DpbSlotInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH264PictureInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH264ProfileInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersAddInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VIDEO_DECODE_H264_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VIDEO_DECODE_H264_SPEC_VERSION = 8

pattern VK_KHR_VIDEO_DECODE_H264_EXTENSION_NAME :: CString
pattern VK_KHR_VIDEO_DECODE_H264_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VIDEO_DECODE_H264_EXTENSION_NAME = Ptr ("VK_KHR_video_decode_h264\0"##)

#else

module Vulkan.Ext.VK_KHR_video_decode_h264 where

#endif