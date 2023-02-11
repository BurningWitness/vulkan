{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shading_rate_enums

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV" #-} VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV =
       VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentShadingRateEnums :: VkBool32
         , supersampleFragmentShadingRates :: VkBool32
         , noInvocationFragmentShadingRates :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fragmentShadingRateEnums" ptr)
       <*> peek (offset @"supersampleFragmentShadingRates" ptr)
       <*> peek (offset @"noInvocationFragmentShadingRates" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentShadingRateEnums" ptr val
    pokeField @"supersampleFragmentShadingRates" ptr val
    pokeField @"noInvocationFragmentShadingRates" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, pNext}

instance Offset "fragmentShadingRateEnums" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, fragmentShadingRateEnums}

instance Offset "supersampleFragmentShadingRates" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, supersampleFragmentShadingRates}

instance Offset "noInvocationFragmentShadingRates" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, noInvocationFragmentShadingRates}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where

#endif