{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shading_rate_enums

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV" #-} VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV =
       VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxFragmentShadingRateInvocationCount :: VkSampleCountFlagBits
         }

instance Storable VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxFragmentShadingRateInvocationCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxFragmentShadingRateInvocationCount" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV, pNext}

instance Offset "maxFragmentShadingRateInvocationCount" VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV, maxFragmentShadingRateInvocationCount}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV where

#endif