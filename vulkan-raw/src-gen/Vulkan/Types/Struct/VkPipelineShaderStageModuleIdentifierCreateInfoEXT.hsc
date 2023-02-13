{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Types.Struct.VkPipelineShaderStageModuleIdentifierCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineShaderStageModuleIdentifierCreateInfoEXT" #-} VkPipelineShaderStageModuleIdentifierCreateInfoEXT =
       VkPipelineShaderStageModuleIdentifierCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , identifierSize :: #{type uint32_t}
         , pIdentifier :: Ptr #{type uint8_t}
         }

instance Storable VkPipelineShaderStageModuleIdentifierCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineShaderStageModuleIdentifierCreateInfoEXT}
  alignment _ = #{alignment VkPipelineShaderStageModuleIdentifierCreateInfoEXT}

  peek ptr = 
    VkPipelineShaderStageModuleIdentifierCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"identifierSize" ptr)
       <*> peek (offset @"pIdentifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"identifierSize" ptr val
    pokeField @"pIdentifier" ptr val

instance Offset "sType" VkPipelineShaderStageModuleIdentifierCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageModuleIdentifierCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineShaderStageModuleIdentifierCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageModuleIdentifierCreateInfoEXT, pNext}

instance Offset "identifierSize" VkPipelineShaderStageModuleIdentifierCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageModuleIdentifierCreateInfoEXT, identifierSize}

instance Offset "pIdentifier" VkPipelineShaderStageModuleIdentifierCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageModuleIdentifierCreateInfoEXT, pIdentifier}

#else

module Vulkan.Types.Struct.VkPipelineShaderStageModuleIdentifierCreateInfoEXT where

#endif