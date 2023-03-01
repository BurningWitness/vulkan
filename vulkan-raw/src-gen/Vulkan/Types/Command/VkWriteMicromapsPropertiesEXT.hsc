{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkWriteMicromapsPropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkWriteMicromapsPropertiesEXT =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ micromapCount
       -> Ptr VkMicromapEXT -- ^ pMicromaps
       -> VkQueryType -- ^ queryType
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pData
       -> #{type size_t} -- ^ stride
       -> IO VkResult

vkFunWriteMicromapsPropertiesEXT :: VkFun VkWriteMicromapsPropertiesEXT
vkFunWriteMicromapsPropertiesEXT = VkFun (Ptr ("vkWriteMicromapsPropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkWriteMicromapsPropertiesEXT where

#endif