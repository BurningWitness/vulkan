{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Command.VkDestroyOpticalFlowSessionNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyOpticalFlowSessionNV =
          VkDevice -- ^ device
       -> VkOpticalFlowSessionNV -- ^ session
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyOpticalFlowSessionNV :: VkFun VkDestroyOpticalFlowSessionNV
vkFunDestroyOpticalFlowSessionNV = VkFun (Ptr ("vkDestroyOpticalFlowSessionNV\0"##))

#else

module Vulkan.Types.Command.VkDestroyOpticalFlowSessionNV where

#endif