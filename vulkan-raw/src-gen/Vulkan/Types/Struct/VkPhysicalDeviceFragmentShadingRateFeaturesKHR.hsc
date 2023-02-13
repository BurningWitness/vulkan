{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShadingRateFeaturesKHR" #-} VkPhysicalDeviceFragmentShadingRateFeaturesKHR =
       VkPhysicalDeviceFragmentShadingRateFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineFragmentShadingRate :: VkBool32
         , primitiveFragmentShadingRate :: VkBool32
         , attachmentFragmentShadingRate :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShadingRateFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShadingRateFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShadingRateFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceFragmentShadingRateFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipelineFragmentShadingRate" ptr)
       <*> peek (offset @"primitiveFragmentShadingRate" ptr)
       <*> peek (offset @"attachmentFragmentShadingRate" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineFragmentShadingRate" ptr val
    pokeField @"primitiveFragmentShadingRate" ptr val
    pokeField @"attachmentFragmentShadingRate" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShadingRateFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShadingRateFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateFeaturesKHR, pNext}

instance Offset "pipelineFragmentShadingRate" VkPhysicalDeviceFragmentShadingRateFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateFeaturesKHR, pipelineFragmentShadingRate}

instance Offset "primitiveFragmentShadingRate" VkPhysicalDeviceFragmentShadingRateFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateFeaturesKHR, primitiveFragmentShadingRate}

instance Offset "attachmentFragmentShadingRate" VkPhysicalDeviceFragmentShadingRateFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateFeaturesKHR, attachmentFragmentShadingRate}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateFeaturesKHR where

#endif