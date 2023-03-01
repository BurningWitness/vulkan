{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetStencilReference where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetStencilReference =
          VkCommandBuffer -- ^ commandBuffer
       -> VkStencilFaceFlags -- ^ faceMask
       -> #{type uint32_t} -- ^ reference
       -> IO ()

vkFunCmdSetStencilReference :: VkFun VkCmdSetStencilReference
vkFunCmdSetStencilReference = VkFun (Ptr ("vkCmdSetStencilReference\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetStencilReference"
  vkCmdSetStencilReference
    :: VkCmdSetStencilReference

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetStencilReference"
  vkCmdSetStencilReferenceUnsafe
    :: VkCmdSetStencilReference