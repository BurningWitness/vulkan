{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdNextSubpass where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkSubpassContents
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdNextSubpass =
          VkCommandBuffer -- ^ commandBuffer
       -> VkSubpassContents -- ^ contents
       -> IO ()

vkFunCmdNextSubpass :: VkFun VkCmdNextSubpass
vkFunCmdNextSubpass = VkFun (Ptr ("vkCmdNextSubpass\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdNextSubpass"
  vkCmdNextSubpass
    :: VkCmdNextSubpass

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdNextSubpass"
  vkCmdNextSubpassUnsafe
    :: VkCmdNextSubpass