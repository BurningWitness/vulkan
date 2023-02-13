{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_properties

module Vulkan.Types.Struct.VkPipelinePropertiesIdentifierEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelinePropertiesIdentifierEXT" #-} VkPipelinePropertiesIdentifierEXT =
       VkPipelinePropertiesIdentifierEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineIdentifier :: #{type uint8_t}
         }

instance Storable VkPipelinePropertiesIdentifierEXT where
  sizeOf    _ = #{size      VkPipelinePropertiesIdentifierEXT}
  alignment _ = #{alignment VkPipelinePropertiesIdentifierEXT}

  peek ptr = 
    VkPipelinePropertiesIdentifierEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineIdentifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineIdentifier" ptr val

instance Offset "sType" VkPipelinePropertiesIdentifierEXT where
  rawOffset = #{offset VkPipelinePropertiesIdentifierEXT, sType}

instance Offset "pNext" VkPipelinePropertiesIdentifierEXT where
  rawOffset = #{offset VkPipelinePropertiesIdentifierEXT, pNext}

instance Offset "pipelineIdentifier" VkPipelinePropertiesIdentifierEXT where
  rawOffset = #{offset VkPipelinePropertiesIdentifierEXT, pipelineIdentifier}

#else

module Vulkan.Types.Struct.VkPipelinePropertiesIdentifierEXT where

#endif