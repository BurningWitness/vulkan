{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_GGP_frame_token

module Vulkan.Ext.VK_GGP_frame_token
  ( pattern VK_GGP_FRAME_TOKEN_SPEC_VERSION
  , pattern VK_GGP_FRAME_TOKEN_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP
  , VkPresentFrameTokenGGP (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPresentFrameTokenGGP
import Vulkan.Types.VkFun



pattern VK_GGP_FRAME_TOKEN_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GGP_FRAME_TOKEN_SPEC_VERSION = 1

pattern VK_GGP_FRAME_TOKEN_EXTENSION_NAME :: CString
pattern VK_GGP_FRAME_TOKEN_EXTENSION_NAME <- (const False -> True)
  where
    VK_GGP_FRAME_TOKEN_EXTENSION_NAME = Ptr ("VK_GGP_frame_token\0"##)

#else

module Vulkan.Ext.VK_GGP_frame_token where

#endif