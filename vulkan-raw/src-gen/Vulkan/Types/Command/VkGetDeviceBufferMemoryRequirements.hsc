{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirements where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceBufferMemoryRequirements
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetDeviceBufferMemoryRequirements =
          VkDevice -- ^ device
       -> Ptr VkDeviceBufferMemoryRequirements -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetDeviceBufferMemoryRequirements :: VkFun VkGetDeviceBufferMemoryRequirements
vkFunGetDeviceBufferMemoryRequirements = VkFun (Ptr ("vkGetDeviceBufferMemoryRequirements\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkGetDeviceBufferMemoryRequirements"
  vkGetDeviceBufferMemoryRequirements
    :: VkGetDeviceBufferMemoryRequirements

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceBufferMemoryRequirements"
  vkGetDeviceBufferMemoryRequirementsUnsafe
    :: VkGetDeviceBufferMemoryRequirements
##endif

#else

module Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirements where

#endif