{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_rasterization_order

module Vulkan.Ext.VK_AMD_rasterization_order
  ( pattern VK_AMD_RASTERIZATION_ORDER_SPEC_VERSION
  , pattern VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD
  , VkRasterizationOrderAMD
  , pattern VK_RASTERIZATION_ORDER_STRICT_AMD
  , pattern VK_RASTERIZATION_ORDER_RELAXED_AMD
  , VkPipelineRasterizationStateRasterizationOrderAMD (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkRasterizationOrderAMD
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineRasterizationStateRasterizationOrderAMD
import Vulkan.Types.VkFun



pattern VK_AMD_RASTERIZATION_ORDER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_RASTERIZATION_ORDER_SPEC_VERSION = 1

pattern VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME :: CString
pattern VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME = Ptr ("VK_AMD_rasterization_order\0"##)

#else

module Vulkan.Ext.VK_AMD_rasterization_order where

#endif