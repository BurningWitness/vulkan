{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_memory_decompression

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryDecompressionFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryDecompressionFeaturesNV" #-} VkPhysicalDeviceMemoryDecompressionFeaturesNV =
       VkPhysicalDeviceMemoryDecompressionFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryDecompression :: VkBool32
         }

instance Storable VkPhysicalDeviceMemoryDecompressionFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryDecompressionFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceMemoryDecompressionFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceMemoryDecompressionFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryDecompression" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryDecompression" ptr val

instance Offset "sType" VkPhysicalDeviceMemoryDecompressionFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceMemoryDecompressionFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionFeaturesNV, pNext}

instance Offset "memoryDecompression" VkPhysicalDeviceMemoryDecompressionFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionFeaturesNV, memoryDecompression}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryDecompressionFeaturesNV where

#endif