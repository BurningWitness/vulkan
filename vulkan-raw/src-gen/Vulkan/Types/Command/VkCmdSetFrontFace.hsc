{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetFrontFace where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFrontFace
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetFrontFace =
          VkCommandBuffer -- ^ commandBuffer
       -> VkFrontFace -- ^ frontFace
       -> IO ()

vkFunCmdSetFrontFace :: VkFun VkCmdSetFrontFace
vkFunCmdSetFrontFace = VkFun (Ptr ("vkCmdSetFrontFace\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetFrontFace"
  vkCmdSetFrontFace
    :: VkCmdSetFrontFace

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetFrontFace"
  vkCmdSetFrontFaceUnsafe
    :: VkCmdSetFrontFace
##endif

#else

module Vulkan.Types.Command.VkCmdSetFrontFace where

#endif