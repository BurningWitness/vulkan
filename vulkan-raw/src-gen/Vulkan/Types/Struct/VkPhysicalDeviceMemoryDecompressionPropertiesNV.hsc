{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_memory_decompression

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryDecompressionPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkMemoryDecompressionMethodFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryDecompressionPropertiesNV" #-} VkPhysicalDeviceMemoryDecompressionPropertiesNV =
       VkPhysicalDeviceMemoryDecompressionPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , decompressionMethods :: VkMemoryDecompressionMethodFlagsNV
         , maxDecompressionIndirectCount :: #{type uint64_t}
         }

instance Storable VkPhysicalDeviceMemoryDecompressionPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryDecompressionPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceMemoryDecompressionPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceMemoryDecompressionPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"decompressionMethods" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDecompressionIndirectCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"decompressionMethods" ptr val
    pokeField @"maxDecompressionIndirectCount" ptr val

instance Offset "sType" VkPhysicalDeviceMemoryDecompressionPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceMemoryDecompressionPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionPropertiesNV, pNext}

instance Offset "decompressionMethods" VkPhysicalDeviceMemoryDecompressionPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionPropertiesNV, decompressionMethods}

instance Offset "maxDecompressionIndirectCount" VkPhysicalDeviceMemoryDecompressionPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMemoryDecompressionPropertiesNV, maxDecompressionIndirectCount}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryDecompressionPropertiesNV where

#endif