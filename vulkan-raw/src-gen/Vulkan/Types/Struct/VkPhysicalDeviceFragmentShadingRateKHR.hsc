{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSampleCountFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShadingRateKHR" #-} VkPhysicalDeviceFragmentShadingRateKHR =
       VkPhysicalDeviceFragmentShadingRateKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sampleCounts :: VkSampleCountFlags
         , fragmentSize :: VkExtent2D
         }

instance Storable VkPhysicalDeviceFragmentShadingRateKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShadingRateKHR}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShadingRateKHR}

  peek ptr = 
    VkPhysicalDeviceFragmentShadingRateKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sampleCounts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sampleCounts" ptr val
    pokeField @"fragmentSize" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShadingRateKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateKHR, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShadingRateKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateKHR, pNext}

instance Offset "sampleCounts" VkPhysicalDeviceFragmentShadingRateKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateKHR, sampleCounts}

instance Offset "fragmentSize" VkPhysicalDeviceFragmentShadingRateKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateKHR, fragmentSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateKHR where

#endif