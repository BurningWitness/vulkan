{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkFormatProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFormatProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkFormat -- ^ format
       -> Ptr VkFormatProperties -- ^ pFormatProperties
       -> IO ()

vkFunGetPhysicalDeviceFormatProperties :: VkFun VkGetPhysicalDeviceFormatProperties
vkFunGetPhysicalDeviceFormatProperties = VkFun (Ptr ("vkGetPhysicalDeviceFormatProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceFormatProperties"
  vkGetPhysicalDeviceFormatProperties
    :: VkGetPhysicalDeviceFormatProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceFormatProperties"
  vkGetPhysicalDeviceFormatPropertiesUnsafe
    :: VkGetPhysicalDeviceFormatProperties