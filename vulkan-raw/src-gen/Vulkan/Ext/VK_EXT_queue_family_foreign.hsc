{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_queue_family_foreign

module Vulkan.Ext.VK_EXT_queue_family_foreign
  ( pattern VK_EXT_QUEUE_FAMILY_FOREIGN_SPEC_VERSION
  , pattern VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME
  , pattern VK_QUEUE_FAMILY_FOREIGN_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.VkFun



pattern VK_EXT_QUEUE_FAMILY_FOREIGN_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_QUEUE_FAMILY_FOREIGN_SPEC_VERSION = 1

pattern VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME :: CString
pattern VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME = Ptr ("VK_EXT_queue_family_foreign\0"##)

#else

module Vulkan.Ext.VK_EXT_queue_family_foreign where

#endif