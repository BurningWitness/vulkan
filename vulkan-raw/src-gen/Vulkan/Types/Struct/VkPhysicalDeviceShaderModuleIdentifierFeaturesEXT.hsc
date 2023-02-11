{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT" #-} VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT =
       VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderModuleIdentifier :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderModuleIdentifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderModuleIdentifier" ptr val

instance Offset "sType" VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT, pNext}

instance Offset "shaderModuleIdentifier" VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT, shaderModuleIdentifier}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where

#endif