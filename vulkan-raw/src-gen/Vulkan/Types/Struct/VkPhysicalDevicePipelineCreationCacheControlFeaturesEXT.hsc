{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_creation_cache_control

module Vulkan.Types.Struct.VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT" #-} VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT =
       VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineCreationCacheControl :: VkBool32
         }

instance Storable VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineCreationCacheControl" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineCreationCacheControl" ptr val

instance Offset "sType" VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT, pNext}

instance Offset "pipelineCreationCacheControl" VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT, pipelineCreationCacheControl}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT where

#endif