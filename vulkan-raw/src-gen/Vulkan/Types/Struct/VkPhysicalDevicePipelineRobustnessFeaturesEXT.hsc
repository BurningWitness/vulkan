{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_robustness

module Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineRobustnessFeaturesEXT" #-} VkPhysicalDevicePipelineRobustnessFeaturesEXT =
       VkPhysicalDevicePipelineRobustnessFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineRobustness :: VkBool32
         }

instance Storable VkPhysicalDevicePipelineRobustnessFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDevicePipelineRobustnessFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDevicePipelineRobustnessFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePipelineRobustnessFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineRobustness" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineRobustness" ptr val

instance Offset "sType" VkPhysicalDevicePipelineRobustnessFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePipelineRobustnessFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessFeaturesEXT, pNext}

instance Offset "pipelineRobustness" VkPhysicalDevicePipelineRobustnessFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePipelineRobustnessFeaturesEXT, pipelineRobustness}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineRobustnessFeaturesEXT where

#endif