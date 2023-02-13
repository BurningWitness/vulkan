{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDevicePipelineCreationCacheControlFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineCreationCacheControlFeatures" #-} VkPhysicalDevicePipelineCreationCacheControlFeatures =
       VkPhysicalDevicePipelineCreationCacheControlFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineCreationCacheControl :: VkBool32
         }

instance Storable VkPhysicalDevicePipelineCreationCacheControlFeatures where
  sizeOf    _ = #{size      VkPhysicalDevicePipelineCreationCacheControlFeatures}
  alignment _ = #{alignment VkPhysicalDevicePipelineCreationCacheControlFeatures}

  peek ptr = 
    VkPhysicalDevicePipelineCreationCacheControlFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineCreationCacheControl" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineCreationCacheControl" ptr val

instance Offset "sType" VkPhysicalDevicePipelineCreationCacheControlFeatures where
  rawOffset = #{offset VkPhysicalDevicePipelineCreationCacheControlFeatures, sType}

instance Offset "pNext" VkPhysicalDevicePipelineCreationCacheControlFeatures where
  rawOffset = #{offset VkPhysicalDevicePipelineCreationCacheControlFeatures, pNext}

instance Offset "pipelineCreationCacheControl" VkPhysicalDevicePipelineCreationCacheControlFeatures where
  rawOffset = #{offset VkPhysicalDevicePipelineCreationCacheControlFeatures, pipelineCreationCacheControl}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineCreationCacheControlFeatures where

#endif