{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_properties

module Vulkan.Types.Struct.VkPhysicalDevicePipelinePropertiesFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelinePropertiesFeaturesEXT" #-} VkPhysicalDevicePipelinePropertiesFeaturesEXT =
       VkPhysicalDevicePipelinePropertiesFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelinePropertiesIdentifier :: VkBool32
         }

instance Storable VkPhysicalDevicePipelinePropertiesFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePipelinePropertiesFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevicePipelinePropertiesFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePipelinePropertiesFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelinePropertiesIdentifier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelinePropertiesIdentifier" ptr val

instance Offset "sType" VkPhysicalDevicePipelinePropertiesFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelinePropertiesFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelinePropertiesFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelinePropertiesFeaturesEXT, pNext}

instance Offset "pipelinePropertiesIdentifier" VkPhysicalDevicePipelinePropertiesFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelinePropertiesFeaturesEXT, pipelinePropertiesIdentifier}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelinePropertiesFeaturesEXT where

#endif