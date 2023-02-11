{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkEnumerateInstanceVersion where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.VkFun



type VkEnumerateInstanceVersion =
          Ptr #{type uint32_t} -- ^ pApiVersion
       -> IO VkResult

vkFunEnumerateInstanceVersion :: VkFun VkEnumerateInstanceVersion
vkFunEnumerateInstanceVersion = VkFun (Ptr ("vkEnumerateInstanceVersion\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkEnumerateInstanceVersion"
  vkEnumerateInstanceVersion
    :: VkEnumerateInstanceVersion

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumerateInstanceVersion"
  vkEnumerateInstanceVersionUnsafe
    :: VkEnumerateInstanceVersion
##endif

#else

module Vulkan.Types.Command.VkEnumerateInstanceVersion where

#endif