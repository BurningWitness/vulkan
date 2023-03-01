{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkSetPrivateData where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkSetPrivateData =
          VkDevice -- ^ device
       -> VkObjectType -- ^ objectType
       -> #{type uint64_t} -- ^ objectHandle
       -> VkPrivateDataSlot -- ^ privateDataSlot
       -> #{type uint64_t} -- ^ data
       -> IO VkResult

vkFunSetPrivateData :: VkFun VkSetPrivateData
vkFunSetPrivateData = VkFun (Ptr ("vkSetPrivateData\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkSetPrivateData"
  vkSetPrivateData
    :: VkSetPrivateData

foreign import CALLCV unsafe "vulkan/vulkan.h vkSetPrivateData"
  vkSetPrivateDataUnsafe
    :: VkSetPrivateData
##endif

#else

module Vulkan.Types.Command.VkSetPrivateData where

#endif