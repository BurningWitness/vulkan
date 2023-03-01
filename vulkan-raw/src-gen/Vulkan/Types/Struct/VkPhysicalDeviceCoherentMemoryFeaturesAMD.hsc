{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_device_coherent_memory

module Vulkan.Types.Struct.VkPhysicalDeviceCoherentMemoryFeaturesAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCoherentMemoryFeaturesAMD" #-} VkPhysicalDeviceCoherentMemoryFeaturesAMD =
       VkPhysicalDeviceCoherentMemoryFeaturesAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceCoherentMemory :: VkBool32
         }

instance Storable VkPhysicalDeviceCoherentMemoryFeaturesAMD where
  sizeOf    _ = #{size      VkPhysicalDeviceCoherentMemoryFeaturesAMD}
  alignment _ = #{alignment VkPhysicalDeviceCoherentMemoryFeaturesAMD}

  peek ptr = 
    VkPhysicalDeviceCoherentMemoryFeaturesAMD
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceCoherentMemory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceCoherentMemory" ptr val

instance Offset "sType" VkPhysicalDeviceCoherentMemoryFeaturesAMD where
  rawOffset = #{offset VkPhysicalDeviceCoherentMemoryFeaturesAMD, sType}

instance Offset "pNext" VkPhysicalDeviceCoherentMemoryFeaturesAMD where
  rawOffset = #{offset VkPhysicalDeviceCoherentMemoryFeaturesAMD, pNext}

instance Offset "deviceCoherentMemory" VkPhysicalDeviceCoherentMemoryFeaturesAMD where
  rawOffset = #{offset VkPhysicalDeviceCoherentMemoryFeaturesAMD, deviceCoherentMemory}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCoherentMemoryFeaturesAMD where

#endif