{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkTrimCommandPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCommandPoolTrimFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkTrimCommandPool =
          VkDevice -- ^ device
       -> VkCommandPool -- ^ commandPool
       -> VkCommandPoolTrimFlags -- ^ flags
       -> IO ()

vkFunTrimCommandPool :: VkFun VkTrimCommandPool
vkFunTrimCommandPool = VkFun (Ptr ("vkTrimCommandPool\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkTrimCommandPool"
  vkTrimCommandPool
    :: VkTrimCommandPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkTrimCommandPool"
  vkTrimCommandPoolUnsafe
    :: VkTrimCommandPool
##endif

#else

module Vulkan.Types.Command.VkTrimCommandPool where

#endif