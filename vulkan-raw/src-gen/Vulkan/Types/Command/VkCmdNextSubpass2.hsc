{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkCmdNextSubpass2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubpassBeginInfo
import Vulkan.Types.Struct.VkSubpassEndInfo
import Vulkan.Types.VkFun



type VkCmdNextSubpass2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkSubpassBeginInfo -- ^ pSubpassBeginInfo
       -> Ptr VkSubpassEndInfo -- ^ pSubpassEndInfo
       -> IO ()

vkFunCmdNextSubpass2 :: VkFun VkCmdNextSubpass2
vkFunCmdNextSubpass2 = VkFun (Ptr ("vkCmdNextSubpass2\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkCmdNextSubpass2"
  vkCmdNextSubpass2
    :: VkCmdNextSubpass2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdNextSubpass2"
  vkCmdNextSubpass2Unsafe
    :: VkCmdNextSubpass2
##endif

#else

module Vulkan.Types.Command.VkCmdNextSubpass2 where

#endif