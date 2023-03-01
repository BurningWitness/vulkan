{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSparseImageFormatProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSparseImageFormatProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkFormat -- ^ format
       -> VkImageType -- ^ type
       -> VkSampleCountFlagBits -- ^ samples
       -> VkImageUsageFlags -- ^ usage
       -> VkImageTiling -- ^ tiling
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkSparseImageFormatProperties -- ^ pProperties
       -> IO ()

vkFunGetPhysicalDeviceSparseImageFormatProperties :: VkFun VkGetPhysicalDeviceSparseImageFormatProperties
vkFunGetPhysicalDeviceSparseImageFormatProperties = VkFun (Ptr ("vkGetPhysicalDeviceSparseImageFormatProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceSparseImageFormatProperties"
  vkGetPhysicalDeviceSparseImageFormatProperties
    :: VkGetPhysicalDeviceSparseImageFormatProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceSparseImageFormatProperties"
  vkGetPhysicalDeviceSparseImageFormatPropertiesUnsafe
    :: VkGetPhysicalDeviceSparseImageFormatProperties