{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDevicePipelineRobustnessPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDevicePipelineRobustnessPropertiesEXT}

  peek ptr = 
    VkPhysicalDevicePipelineRobustnessPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"defaultRobustnessStorageBuffers" ptr)
       <*> peek (offset @"defaultRobustnessUniformBuffers" ptr)
       <*> peek (offset @"defaultRobustnessVertexInputs" ptr)
       <*> peek (offset @"defaultRobustnessImages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"defaultRobustnessStorageBuffers" ptr val
    pokeField @"defaultRobustnessUniformBuffers" ptr val
    pokeField @"defaultRobustnessVertexInputs" ptr val
    pokeField @"defaultRobustnessImages" ptr val

instance Offset "sType" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessPropertiesEXT, pNext}

instance Offset "defaultRobustnessStorageBuffers" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessStorageBuffers}

instance Offset "defaultRobustnessUniformBuffers" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessUniformBuffers}

instance Offset "defaultRobustnessVertexInputs" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessVertexInputs}

instance Offset "defaultRobustnessImages" VkPhysicalDevicePipelineRobustnessPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessPropertiesEXT, defaultRobustnessImages}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessPropertiesEXT where

#endif