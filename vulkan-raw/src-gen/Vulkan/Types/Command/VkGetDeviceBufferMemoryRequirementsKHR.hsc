{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceBufferMemoryRequirements
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetDeviceBufferMemoryRequirementsKHR =
          VkDevice -- ^ device
       -> Ptr VkDeviceBufferMemoryRequirements -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetDeviceBufferMemoryRequirementsKHR :: VkFun VkGetDeviceBufferMemoryRequirementsKHR
vkFunGetDeviceBufferMemoryRequirementsKHR = VkFun (Ptr ("vkGetDeviceBufferMemoryRequirementsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirementsKHR where

#endif