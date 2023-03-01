{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryProperties2" #-} VkPhysicalDeviceMemoryProperties2 =
       VkPhysicalDeviceMemoryProperties2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryProperties :: VkPhysicalDeviceMemoryProperties
         }

instance Storable VkPhysicalDeviceMemoryProperties2 where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryProperties2}
  alignment _ = #{alignment VkPhysicalDeviceMemoryProperties2}

  peek ptr = 
    VkPhysicalDeviceMemoryProperties2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryProperties" ptr val

instance Offset "sType" VkPhysicalDeviceMemoryProperties2 where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties2, sType}

instance Offset "pNext" VkPhysicalDeviceMemoryProperties2 where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties2, pNext}

instance Offset "memoryProperties" VkPhysicalDeviceMemoryProperties2 where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties2, memoryProperties}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2 where

#endif