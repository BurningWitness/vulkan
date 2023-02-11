{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pageable_device_local_memory

module Vulkan.Types.Struct.VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT" #-} VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT =
       VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pageableDeviceLocalMemory :: VkBool32
         }

instance Storable VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pageableDeviceLocalMemory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pageableDeviceLocalMemory" ptr val

instance Offset "sType" VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT, pNext}

instance Offset "pageableDeviceLocalMemory" VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT, pageableDeviceLocalMemory}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT where

#endif