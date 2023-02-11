{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkEnumerateInstanceLayerProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Struct.VkLayerProperties
import Vulkan.Types.VkFun



type VkEnumerateInstanceLayerProperties =
          Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkLayerProperties -- ^ pProperties
       -> IO VkResult

vkFunEnumerateInstanceLayerProperties :: VkFun VkEnumerateInstanceLayerProperties
vkFunEnumerateInstanceLayerProperties = VkFun (Ptr ("vkEnumerateInstanceLayerProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkEnumerateInstanceLayerProperties"
  vkEnumerateInstanceLayerProperties
    :: VkEnumerateInstanceLayerProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumerateInstanceLayerProperties"
  vkEnumerateInstanceLayerPropertiesUnsafe
    :: VkEnumerateInstanceLayerProperties