{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkPhysicalDeviceProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceProperties



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProperties2KHR" #-} VkPhysicalDeviceProperties2KHR =
       VkPhysicalDeviceProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , properties :: VkPhysicalDeviceProperties
         }

instance Storable VkPhysicalDeviceProperties2KHR where
  sizeOf    _ = #{size      VkPhysicalDeviceProperties2KHR}
  alignment _ = #{alignment VkPhysicalDeviceProperties2KHR}

  peek ptr = 
    VkPhysicalDeviceProperties2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"properties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"properties" ptr val

instance Offset "sType" VkPhysicalDeviceProperties2KHR where
  rawOffset = #{offset VkPhysicalDeviceProperties2KHR, sType}

instance Offset "pNext" VkPhysicalDeviceProperties2KHR where
  rawOffset = #{offset VkPhysicalDeviceProperties2KHR, pNext}

instance Offset "properties" VkPhysicalDeviceProperties2KHR where
  rawOffset = #{offset VkPhysicalDeviceProperties2KHR, properties}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProperties2KHR where

#endif