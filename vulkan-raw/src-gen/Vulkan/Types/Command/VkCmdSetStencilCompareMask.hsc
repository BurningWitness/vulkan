{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetStencilCompareMask where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilCompareMask =
          VkCommandBuffer -- ^ commandBuffer
       -> VkStencilFaceFlags -- ^ faceMask
       -> #{type uint32_t} -- ^ compareMask
       -> IO ()

vkFunCmdSetStencilCompareMask :: VkFun VkCmdSetStencilCompareMask
vkFunCmdSetStencilCompareMask = VkFun (Ptr ("vkCmdSetStencilCompareMask\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetStencilCompareMask"
  vkCmdSetStencilCompareMask
    :: VkCmdSetStencilCompareMask

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetStencilCompareMask"
  vkCmdSetStencilCompareMaskUnsafe
    :: VkCmdSetStencilCompareMask