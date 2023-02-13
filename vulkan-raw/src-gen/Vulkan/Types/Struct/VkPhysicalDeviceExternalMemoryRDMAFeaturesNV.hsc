{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_rdma

module Vulkan.Types.Struct.VkPhysicalDeviceExternalMemoryRDMAFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalMemoryRDMAFeaturesNV" #-} VkPhysicalDeviceExternalMemoryRDMAFeaturesNV =
       VkPhysicalDeviceExternalMemoryRDMAFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , externalMemoryRDMA :: VkBool32
         }

instance Storable VkPhysicalDeviceExternalMemoryRDMAFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalMemoryRDMAFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceExternalMemoryRDMAFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceExternalMemoryRDMAFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"externalMemoryRDMA" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"externalMemoryRDMA" ptr val

instance Offset "sType" VkPhysicalDeviceExternalMemoryRDMAFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceExternalMemoryRDMAFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceExternalMemoryRDMAFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceExternalMemoryRDMAFeaturesNV, pNext}

instance Offset "externalMemoryRDMA" VkPhysicalDeviceExternalMemoryRDMAFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceExternalMemoryRDMAFeaturesNV, externalMemoryRDMA}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalMemoryRDMAFeaturesNV where

#endif