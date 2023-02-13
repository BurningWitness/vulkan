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
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentShadingRateEnums" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supersampleFragmentShadingRates" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"noInvocationFragmentShadingRates" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentShadingRateEnums" ptr val
    pokeField @"supersampleFragmentShadingRates" ptr val
    pokeField @"noInvocationFragmentShadingRates" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, pNext}

instance Offset "fragmentShadingRateEnums" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, fragmentShadingRateEnums}

instance Offset "supersampleFragmentShadingRates" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, supersampleFragmentShadingRates}

instance Offset "noInvocationFragmentShadingRates" VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV, noInvocationFragmentShadingRates}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV where

#endif