{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostics_config

module Vulkan.Types.Struct.VkPhysicalDeviceDiagnosticsConfigFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDiagnosticsConfigFeaturesNV" #-} VkPhysicalDeviceDiagnosticsConfigFeaturesNV =
       VkPhysicalDeviceDiagnosticsConfigFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , diagnosticsConfig :: VkBool32
         }

instance Storable VkPhysicalDeviceDiagnosticsConfigFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceDiagnosticsConfigFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceDiagnosticsConfigFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceDiagnosticsConfigFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"diagnosticsConfig" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"diagnosticsConfig" ptr val

instance Offset "sType" VkPhysicalDeviceDiagnosticsConfigFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceDiagnosticsConfigFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceDiagnosticsConfigFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceDiagnosticsConfigFeaturesNV, pNext}

instance Offset "diagnosticsConfig" VkPhysicalDeviceDiagnosticsConfigFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceDiagnosticsConfigFeaturesNV, diagnosticsConfig}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDiagnosticsConfigFeaturesNV where

#endif