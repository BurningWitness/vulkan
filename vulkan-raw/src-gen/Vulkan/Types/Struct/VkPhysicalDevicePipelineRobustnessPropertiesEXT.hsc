{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_robustness

module Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineRobustnessBufferBehaviorEXT
import Vulkan.Types.Enum.VkPipelineRobustnessImageBehaviorEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineRobustnessPropertiesEXT" #-} VkPhysicalDevicePipelineRobustnessPropertiesEXT =
       VkPhysicalDevicePipelineRobustnessPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , defaultRobustnessStorageBuffers :: VkPipelineRobustnessBufferBehaviorEXT
         , defaultRobustnessUniformBuffers :: VkPipelineRobustnessBufferBehaviorEXT
         , defaultRobustnessVertexInputs :: VkPipelineRobustnessBufferBehaviorEXT
         , defaultRobustnessImages :: VkPipelineRobustnessImageBehaviorEXT
         }

instance Storable VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePipelineRobustnessPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDevicePipelineRobustnessPropertiesEXT}

  peek ptr = 
    VkPhysicalDevicePipelineRobustnessPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"defaultRobustnessStorageBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"defaultRobustnessUniformBuffers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"defaultRobustnessVertexInputs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"defaultRobustnessImages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"defaultRobustnessStorageBuffers" ptr val
    pokeField @"defaultRobustnessUniformBuffers" ptr val
    pokeField @"defaultRobustnessVertexInputs" ptr val
    pokeField @"defaultRobustnessImages" ptr val

instance Offset "sType" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineRobustnessPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineRobustnessPropertiesEXT, pNext}

instance Offset "defaultRobustnessStorageBuffers" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessStorageBuffers}

instance Offset "defaultRobustnessUniformBuffers" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessUniformBuffers}

instance Offset "defaultRobustnessVertexInputs" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessVertexInputs}

instance Offset "defaultRobustnessImages" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessImages}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessPropertiesEXT where

#endif