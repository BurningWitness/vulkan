{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceGroupProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceGroupProperties" #-} VkPhysicalDeviceGroupProperties =
       VkPhysicalDeviceGroupProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , physicalDeviceCount :: #{type uint32_t}
         , physicalDevices :: VkPhysicalDevice
         , subsetAllocation :: VkBool32
         }

instance Storable VkPhysicalDeviceGroupProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceGroupProperties}
  alignment _ = #{alignment VkPhysicalDeviceGroupProperties}

  peek ptr = 
    VkPhysicalDeviceGroupProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"physicalDeviceCount" ptr)
       <*> peek (offset @"physicalDevices" ptr)
       <*> peek (offset @"subsetAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"physicalDeviceCount" ptr val
    pokeField @"physicalDevices" ptr val
    pokeField @"subsetAllocation" ptr val

instance Offset "sType" VkPhysicalDeviceGroupProperties where
  rawOffset = #{offset VkPhysicalDeviceGroupProperties, sType}

instance Offset "pNext" VkPhysicalDeviceGroupProperties where
  rawOffset = #{offset VkPhysicalDeviceGroupProperties, pNext}

instance Offset "physicalDeviceCount" VkPhysicalDeviceGroupProperties where
  rawOffset = #{offset VkPhysicalDeviceGroupProperties, physicalDeviceCount}

instance Offset "physicalDevices" VkPhysicalDeviceGroupProperties where
  rawOffset = #{offset VkPhysicalDeviceGroupProperties, physicalDevices}

instance Offset "subsetAllocation" VkPhysicalDeviceGroupProperties where
  rawOffset = #{offset VkPhysicalDeviceGroupProperties, subsetAllocation}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceGroupProperties where

#endif