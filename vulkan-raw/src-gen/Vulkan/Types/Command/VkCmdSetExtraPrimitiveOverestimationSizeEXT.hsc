{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetExtraPrimitiveOverestimationSizeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetExtraPrimitiveOverestimationSizeEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type float} -- ^ extraPrimitiveOverestimationSize
       -> IO ()

vkFunCmdSetExtraPrimitiveOverestimationSizeEXT :: VkFun VkCmdSetExtraPrimitiveOverestimationSizeEXT
vkFunCmdSetExtraPrimitiveOverestimationSizeEXT = VkFun (Ptr ("vkCmdSetExtraPrimitiveOverestimationSizeEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetExtraPrimitiveOverestimationSizeEXT where

#endif