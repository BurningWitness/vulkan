{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkCmdDispatchBase where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDispatchBase =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ baseGroupX
       -> #{type uint32_t} -- ^ baseGroupY
       -> #{type uint32_t} -- ^ baseGroupZ
       -> #{type uint32_t} -- ^ groupCountX
       -> #{type uint32_t} -- ^ groupCountY
       -> #{type uint32_t} -- ^ groupCountZ
       -> IO ()

vkFunCmdDispatchBase :: VkFun VkCmdDispatchBase
vkFunCmdDispatchBase = VkFun (Ptr ("vkCmdDispatchBase\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkCmdDispatchBase"
  vkCmdDispatchBase
    :: VkCmdDispatchBase

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdDispatchBase"
  vkCmdDispatchBaseUnsafe
    :: VkCmdDispatchBase
##endif

#else

module Vulkan.Types.Command.VkCmdDispatchBase where

#endif