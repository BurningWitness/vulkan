{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_draw_indirect_count

module Vulkan.Ext.VK_AMD_draw_indirect_count
  ( pattern VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION
  , pattern VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME
  , VkCmdDrawIndirectCountAMD
  , vkFunCmdDrawIndirectCountAMD
  , VkCmdDrawIndexedIndirectCountAMD
  , vkFunCmdDrawIndexedIndirectCountAMD
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountAMD
import Vulkan.Types.Command.VkCmdDrawIndirectCountAMD
import Vulkan.Types.VkFun



pattern VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION = 2

pattern VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME :: CString
pattern VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME = Ptr ("VK_AMD_draw_indirect_count\0"##)

#else

module Vulkan.Ext.VK_AMD_draw_indirect_count where

#endif