{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_robustness

module Vulkan.Types.Struct.VkPipelineRobustnessCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineRobustnessBufferBehaviorEXT
import Vulkan.Types.Enum.VkPipelineRobustnessImageBehaviorEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRobustnessCreateInfoEXT" #-} VkPipelineRobustnessCreateInfoEXT =
       VkPipelineRobustnessCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageBuffers :: VkPipelineRobustnessBufferBehaviorEXT
         , uniformBuffers :: VkPipelineRobustnessBufferBehaviorEXT
         , vertexInputs :: VkPipelineRobustnessBufferBehaviorEXT
         , images :: VkPipelineRobustnessImageBehaviorEXT
         }

instance Storable VkPipelineRobustnessCreateInfoEXT where
  sizeOf    _ = #{size      struct VkPipelineRobustnessCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineRobustnessCreateInfoEXT}

  peek ptr = 
    VkPipelineRobustnessCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"storageBuffers" ptr)
       <*> peek (offset @"uniformBuffers" ptr)
       <*> peek (offset @"vertexInputs" ptr)
       <*> peek (offset @"images" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"storageBuffers" ptr val
    pokeField @"uniformBuffers" ptr val
    pokeField @"vertexInputs" ptr val
    pokeField @"images" ptr val

instance Offset "sType" VkPipelineRobustnessCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRobustnessCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRobustnessCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRobustnessCreateInfoEXT, pNext}

instance Offset "storageBuffers" VkPipelineRobustnessCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRobustnessCreateInfoEXT, storageBuffers}

instance Offset "uniformBuffers" VkPipelineRobustnessCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRobustnessCreateInfoEXT, uniformBuffers}

instance Offset "vertexInputs" VkPipelineRobustnessCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRobustnessCreateInfoEXT, vertexInputs}

instance Offset "images" VkPipelineRobustnessCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRobustnessCreateInfoEXT, images}

#else

module Vulkan.Types.Struct.VkPipelineRobustnessCreateInfoEXT where

#endif