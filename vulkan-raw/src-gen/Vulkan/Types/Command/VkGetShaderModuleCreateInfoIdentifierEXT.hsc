{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Types.Command.VkGetShaderModuleCreateInfoIdentifierEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkShaderModuleCreateInfo
import Vulkan.Types.Struct.VkShaderModuleIdentifierEXT
import Vulkan.Types.VkFun



type VkGetShaderModuleCreateInfoIdentifierEXT =
          VkDevice -- ^ device
       -> Ptr VkShaderModuleCreateInfo -- ^ pCreateInfo
       -> Ptr VkShaderModuleIdentifierEXT -- ^ pIdentifier
       -> IO ()

vkFunGetShaderModuleCreateInfoIdentifierEXT :: VkFun VkGetShaderModuleCreateInfoIdentifierEXT
vkFunGetShaderModuleCreateInfoIdentifierEXT = VkFun (Ptr ("vkGetShaderModuleCreateInfoIdentifierEXT\0"##))

#else

module Vulkan.Types.Command.VkGetShaderModuleCreateInfoIdentifierEXT where

#endif