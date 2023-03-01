{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Command.VkCreateOpticalFlowSessionNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkOpticalFlowSessionCreateInfoNV
import Vulkan.Types.VkFun



type VkCreateOpticalFlowSessionNV =
          VkDevice -- ^ device
       -> Ptr VkOpticalFlowSessionCreateInfoNV -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkOpticalFlowSessionNV -- ^ pSession
       -> IO VkResult

vkFunCreateOpticalFlowSessionNV :: VkFun VkCreateOpticalFlowSessionNV
vkFunCreateOpticalFlowSessionNV = VkFun (Ptr ("vkCreateOpticalFlowSessionNV\0"##))

#else

module Vulkan.Types.Command.VkCreateOpticalFlowSessionNV where

#endif