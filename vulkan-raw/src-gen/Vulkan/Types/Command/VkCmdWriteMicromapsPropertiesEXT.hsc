{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCmdWriteMicromapsPropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteMicromapsPropertiesEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ micromapCount
       -> Ptr VkMicromapEXT -- ^ pMicromaps
       -> VkQueryType -- ^ queryType
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> IO ()

vkFunCmdWriteMicromapsPropertiesEXT :: VkFun VkCmdWriteMicromapsPropertiesEXT
vkFunCmdWriteMicromapsPropertiesEXT = VkFun (Ptr ("vkCmdWriteMicromapsPropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdWriteMicromapsPropertiesEXT where

#endif