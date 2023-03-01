{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkGetPrivateData where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPrivateData =
          VkDevice -- ^ device
       -> VkObjectType -- ^ objectType
       -> #{type uint64_t} -- ^ objectHandle
       -> VkPrivateDataSlot -- ^ privateDataSlot
       -> Ptr #{type uint64_t} -- ^ pData
       -> IO ()

vkFunGetPrivateData :: VkFun VkGetPrivateData
vkFunGetPrivateData = VkFun (Ptr ("vkGetPrivateData\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkGetPrivateData"
  vkGetPrivateData
    :: VkGetPrivateData

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPrivateData"
  vkGetPrivateDataUnsafe
    :: VkGetPrivateData
##endif

#else

module Vulkan.Types.Command.VkGetPrivateData where

#endif