{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_draw_indirect_count

module Vulkan.Ext.VK_KHR_draw_indirect_count
  ( pattern VK_KHR_DRAW_INDIRECT_COUNT_SPEC_VERSION
  , pattern VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME
  , VkCmdDrawIndirectCountKHR
  , vkFunCmdDrawIndirectCountKHR
  , VkCmdDrawIndexedIndirectCountKHR
  , vkFunCmdDrawIndexedIndirectCountKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountKHR
import Vulkan.Types.Command.VkCmdDrawIndirectCountKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DRAW_INDIRECT_COUNT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DRAW_INDIRECT_COUNT_SPEC_VERSION = 1

pattern VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME :: CString
pattern VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME = Ptr ("VK_KHR_draw_indirect_count\0"##)

#else

module Vulkan.Ext.VK_KHR_draw_indirect_count where

#endif