{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryProperties2KHR" #-} VkPhysicalDeviceMemoryProperties2KHR =
       VkPhysicalDeviceMemoryProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryProperties :: VkPhysicalDeviceMemoryProperties
         }

instance Storable VkPhysicalDeviceMemoryProperties2KHR where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryProperties2KHR}
  alignment _ = #{alignment VkPhysicalDeviceMemoryProperties2KHR}

  peek ptr = 
    VkPhysicalDeviceMemoryProperties2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryProperties" ptr val

instance Offset "sType" VkPhysicalDeviceMemoryProperties2KHR where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties2KHR, sType}

instance Offset "pNext" VkPhysicalDeviceMemoryProperties2KHR where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties2KHR, pNext}

instance Offset "memoryProperties" VkPhysicalDeviceMemoryProperties2KHR where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties2KHR, memoryProperties}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2KHR where

#endif