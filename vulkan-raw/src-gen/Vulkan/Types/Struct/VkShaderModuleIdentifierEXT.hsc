{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Types.Struct.VkShaderModuleIdentifierEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkShaderModuleIdentifierEXT" #-} VkShaderModuleIdentifierEXT =
       VkShaderModuleIdentifierEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , identifierSize :: #{type uint32_t}
         , identifier :: #{type uint8_t}
         }

instance Storable VkShaderModuleIdentifierEXT where
  sizeOf    _ = #{size      VkShaderModuleIdentifierEXT}
  alignment _ = #{alignment VkShaderModuleIdentifierEXT}

  peek ptr = 
    VkShaderModuleIdentifierEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"identifierSize" ptr)
       <*> peek (offset @"identifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"identifierSize" ptr val
    pokeField @"identifier" ptr val

instance Offset "sType" VkShaderModuleIdentifierEXT where
  rawOffset = #{offset VkShaderModuleIdentifierEXT, sType}

instance Offset "pNext" VkShaderModuleIdentifierEXT where
  rawOffset = #{offset VkShaderModuleIdentifierEXT, pNext}

instance Offset "identifierSize" VkShaderModuleIdentifierEXT where
  rawOffset = #{offset VkShaderModuleIdentifierEXT, identifierSize}

instance Offset "identifier" VkShaderModuleIdentifierEXT where
  rawOffset = #{offset VkShaderModuleIdentifierEXT, identifier}

#else

module Vulkan.Types.Struct.VkShaderModuleIdentifierEXT where

#endif