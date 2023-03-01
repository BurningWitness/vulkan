{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkWriteAccelerationStructuresPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkWriteAccelerationStructuresPropertiesKHR =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ accelerationStructureCount
       -> Ptr VkAccelerationStructureKHR -- ^ pAccelerationStructures
       -> VkQueryType -- ^ queryType
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pData
       -> #{type size_t} -- ^ stride
       -> IO VkResult

vkFunWriteAccelerationStructuresPropertiesKHR :: VkFun VkWriteAccelerationStructuresPropertiesKHR
vkFunWriteAccelerationStructuresPropertiesKHR = VkFun (Ptr ("vkWriteAccelerationStructuresPropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkWriteAccelerationStructuresPropertiesKHR where

#endif