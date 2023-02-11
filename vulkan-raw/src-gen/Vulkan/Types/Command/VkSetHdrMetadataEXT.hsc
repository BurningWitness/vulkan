{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_hdr_metadata

module Vulkan.Types.Command.VkSetHdrMetadataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkHdrMetadataEXT
import Vulkan.Types.VkFun



type VkSetHdrMetadataEXT =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ swapchainCount
       -> Ptr VkSwapchainKHR -- ^ pSwapchains
       -> Ptr VkHdrMetadataEXT -- ^ pMetadata
       -> IO ()

vkFunSetHdrMetadataEXT :: VkFun VkSetHdrMetadataEXT
vkFunSetHdrMetadataEXT = VkFun (Ptr ("vkSetHdrMetadataEXT\0"##))

#else

module Vulkan.Types.Command.VkSetHdrMetadataEXT where

#endif