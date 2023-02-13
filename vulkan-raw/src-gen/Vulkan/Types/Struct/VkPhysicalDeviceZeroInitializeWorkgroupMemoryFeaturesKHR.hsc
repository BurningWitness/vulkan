{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_zero_initialize_workgroup_memory

module Vulkan.Types.Struct.VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR" #-} VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR =
       VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderZeroInitializeWorkgroupMemory :: VkBool32
         }

instance Storable VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderZeroInitializeWorkgroupMemory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderZeroInitializeWorkgroupMemory" ptr val

instance Offset "sType" VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR, pNext}

instance Offset "shaderZeroInitializeWorkgroupMemory" VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR, shaderZeroInitializeWorkgroupMemory}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR where

#endif