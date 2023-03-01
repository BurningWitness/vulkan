{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures" #-} VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures =
       VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderZeroInitializeWorkgroupMemory :: VkBool32
         }

instance Storable VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures}
  alignment _ = #{alignment VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures}

  peek ptr = 
    VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderZeroInitializeWorkgroupMemory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderZeroInitializeWorkgroupMemory" ptr val

instance Offset "sType" VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures where
  rawOffset = #{offset VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures where
  rawOffset = #{offset VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures, pNext}

instance Offset "shaderZeroInitializeWorkgroupMemory" VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures where
  rawOffset = #{offset VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures, shaderZeroInitializeWorkgroupMemory}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures where

#endif