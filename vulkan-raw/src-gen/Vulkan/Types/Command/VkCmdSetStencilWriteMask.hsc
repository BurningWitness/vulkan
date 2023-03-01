{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetStencilWriteMask where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilWriteMask =
          VkCommandBuffer -- ^ commandBuffer
       -> VkStencilFaceFlags -- ^ faceMask
       -> #{type uint32_t} -- ^ writeMask
       -> IO ()

vkFunCmdSetStencilWriteMask :: VkFun VkCmdSetStencilWriteMask
vkFunCmdSetStencilWriteMask = VkFun (Ptr ("vkCmdSetStencilWriteMask\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetStencilWriteMask"
  vkCmdSetStencilWriteMask
    :: VkCmdSetStencilWriteMask

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetStencilWriteMask"
  vkCmdSetStencilWriteMaskUnsafe
    :: VkCmdSetStencilWriteMask