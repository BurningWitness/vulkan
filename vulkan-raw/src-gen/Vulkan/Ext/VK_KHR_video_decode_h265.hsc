{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Ext.VK_KHR_video_decode_h265
  ( pattern VK_KHR_VIDEO_DECODE_H265_SPEC_VERSION
  , pattern VK_KHR_VIDEO_DECODE_H265_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_CAPABILITIES_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PROFILE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PICTURE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_DPB_SLOT_INFO_KHR
  , pattern VK_VIDEO_CODEC_OPERATION_DECODE_H265_BIT_KHR
  , VkVideoDecodeH265ProfileInfoKHR (..)
  , VkVideoDecodeH265CapabilitiesKHR (..)
  , VkVideoDecodeH265SessionParametersCreateInfoKHR (..)
  , VkVideoDecodeH265SessionParametersAddInfoKHR (..)
  , VkVideoDecodeH265PictureInfoKHR (..)
  , VkVideoDecodeH265DpbSlotInfoKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCodecOperationFlagBitsKHR
import Vulkan.Types.Struct.VkVideoDecodeH265CapabilitiesKHR
import Vulkan.Types.Struct.VkVideoDecodeH265DpbSlotInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH265PictureInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH265ProfileInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersAddInfoKHR
import Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VIDEO_DECODE_H265_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VIDEO_DECODE_H265_SPEC_VERSION = 7

pattern VK_KHR_VIDEO_DECODE_H265_EXTENSION_NAME :: CString
pattern VK_KHR_VIDEO_DECODE_H265_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VIDEO_DECODE_H265_EXTENSION_NAME = Ptr ("VK_KHR_video_decode_h265\0"##)

#else

module Vulkan.Ext.VK_KHR_video_decode_h265 where

#endif