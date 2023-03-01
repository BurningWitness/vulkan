{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkDestroyMicromapEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyMicromapEXT =
          VkDevice -- ^ device
       -> VkMicromapEXT -- ^ micromap
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyMicromapEXT :: VkFun VkDestroyMicromapEXT
vkFunDestroyMicromapEXT = VkFun (Ptr ("vkDestroyMicromapEXT\0"##))

#else

module Vulkan.Types.Command.VkDestroyMicromapEXT where

#endif