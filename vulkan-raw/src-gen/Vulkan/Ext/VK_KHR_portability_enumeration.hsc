{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_portability_enumeration

module Vulkan.Ext.VK_KHR_portability_enumeration
  ( pattern VK_KHR_PORTABILITY_ENUMERATION_SPEC_VERSION
  , pattern VK_KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME
  , pattern VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkInstanceCreateFlagBits
import Vulkan.Types.VkFun



pattern VK_KHR_PORTABILITY_ENUMERATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PORTABILITY_ENUMERATION_SPEC_VERSION = 1

pattern VK_KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME :: CString
pattern VK_KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME = Ptr ("VK_KHR_portability_enumeration\0"##)

#else

module Vulkan.Ext.VK_KHR_portability_enumeration where

#endif