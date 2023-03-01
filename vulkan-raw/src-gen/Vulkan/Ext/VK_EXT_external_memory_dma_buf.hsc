{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_external_memory_dma_buf

module Vulkan.Ext.VK_EXT_external_memory_dma_buf
  ( pattern VK_EXT_EXTERNAL_MEMORY_DMA_BUF_SPEC_VERSION
  , pattern VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.VkFun



pattern VK_EXT_EXTERNAL_MEMORY_DMA_BUF_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_EXTERNAL_MEMORY_DMA_BUF_SPEC_VERSION = 1

pattern VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME :: CString
pattern VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME = Ptr ("VK_EXT_external_memory_dma_buf\0"##)

#else

module Vulkan.Ext.VK_EXT_external_memory_dma_buf where

#endif