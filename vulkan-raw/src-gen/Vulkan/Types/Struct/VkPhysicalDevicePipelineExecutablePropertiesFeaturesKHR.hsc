{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Struct.VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR" #-} VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR =
       VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineExecutableInfo :: VkBool32
         }

instance Storable VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR}
  alignment _ = #{alignment struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR}

  peek ptr = 
    VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineExecutableInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineExecutableInfo" ptr val

instance Offset "sType" VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR, pNext}

instance Offset "pipelineExecutableInfo" VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR, pipelineExecutableInfo}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR where

#endif