{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderModuleIdentifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderModuleIdentifier" ptr val

instance Offset "sType" VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT, pNext}

instance Offset "shaderModuleIdentifier" VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT, shaderModuleIdentifier}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT where

#endif