{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkEnumerateInstanceExtensionProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Struct.VkExtensionProperties
import Vulkan.Types.VkFun



type VkEnumerateInstanceExtensionProperties =
          Ptr #{type char} -- ^ pLayerName
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkExtensionProperties -- ^ pProperties
       -> IO VkResult

vkFunEnumerateInstanceExtensionProperties :: VkFun VkEnumerateInstanceExtensionProperties
vkFunEnumerateInstanceExtensionProperties = VkFun (Ptr ("vkEnumerateInstanceExtensionProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkEnumerateInstanceExtensionProperties"
  vkEnumerateInstanceExtensionProperties
    :: VkEnumerateInstanceExtensionProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumerateInstanceExtensionProperties"
  vkEnumerateInstanceExtensionPropertiesUnsafe
    :: VkEnumerateInstanceExtensionProperties