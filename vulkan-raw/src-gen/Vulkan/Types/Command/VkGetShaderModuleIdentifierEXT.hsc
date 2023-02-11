{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Types.Command.VkGetShaderModuleIdentifierEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkShaderModuleIdentifierEXT
import Vulkan.Types.VkFun



type VkGetShaderModuleIdentifierEXT =
          VkDevice -- ^ device
       -> VkShaderModule -- ^ shaderModule
       -> Ptr VkShaderModuleIdentifierEXT -- ^ pIdentifier
       -> IO ()

vkFunGetShaderModuleIdentifierEXT :: VkFun VkGetShaderModuleIdentifierEXT
vkFunGetShaderModuleIdentifierEXT = VkFun (Ptr ("vkGetShaderModuleIdentifierEXT\0"##))

#else

module Vulkan.Types.Command.VkGetShaderModuleIdentifierEXT where

#endif