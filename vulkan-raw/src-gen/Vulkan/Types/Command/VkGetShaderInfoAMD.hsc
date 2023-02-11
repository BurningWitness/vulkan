{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_info

module Vulkan.Types.Command.VkGetShaderInfoAMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkShaderInfoTypeAMD
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetShaderInfoAMD =
          VkDevice -- ^ device
       -> VkPipeline -- ^ pipeline
       -> VkShaderStageFlagBits -- ^ shaderStage
       -> VkShaderInfoTypeAMD -- ^ infoType
       -> Ptr #{type size_t} -- ^ pInfoSize
       -> Ptr () -- ^ pInfo
       -> IO VkResult

vkFunGetShaderInfoAMD :: VkFun VkGetShaderInfoAMD
vkFunGetShaderInfoAMD = VkFun (Ptr ("vkGetShaderInfoAMD\0"##))

#else

module Vulkan.Types.Command.VkGetShaderInfoAMD where

#endif