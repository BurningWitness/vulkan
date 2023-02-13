{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT" #-} VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT =
       VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderModuleIdentifierAlgorithmUUID :: #{type uint8_t}
         }

instance Storable VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderModuleIdentifierAlgorithmUUID" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderModuleIdentifierAlgorithmUUID" ptr val

instance Offset "sType" VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT, pNext}

instance Offset "shaderModuleIdentifierAlgorithmUUID" VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT, shaderModuleIdentifierAlgorithmUUID}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT where

#endif