{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_memory_decompression

module Vulkan.Types.Struct.VkDecompressMemoryRegionNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkMemoryDecompressionMethodFlagsNV



data {-# CTYPE "vulkan/vulkan.h" "VkDecompressMemoryRegionNV" #-} VkDecompressMemoryRegionNV =
       VkDecompressMemoryRegionNV
         { srcAddress :: VkDeviceAddress
         , dstAddress :: VkDeviceAddress
         , compressedSize :: VkDeviceSize -- ^ Specified in bytes
         , decompressedSize :: VkDeviceSize -- ^ Specified in bytes
         , decompressionMethod :: VkMemoryDecompressionMethodFlagsNV
         }

instance Storable VkDecompressMemoryRegionNV where
  sizeOf    _ = #{size      VkDecompressMemoryRegionNV}
  alignment _ = #{alignment VkDecompressMemoryRegionNV}

  peek ptr = 
    VkDecompressMemoryRegionNV
       <$> peek (offset @"srcAddress" ptr)
       <*> peek (offset @"dstAddress" ptr)
       <*> peek (offset @"compressedSize" ptr)
       <*> peek (offset @"decompressedSize" ptr)
       <*> peek (offset @"decompressionMethod" ptr)

  poke ptr val = do
    pokeField @"srcAddress" ptr val
    pokeField @"dstAddress" ptr val
    pokeField @"compressedSize" ptr val
    pokeField @"decompressedSize" ptr val
    pokeField @"decompressionMethod" ptr val

instance Offset "srcAddress" VkDecompressMemoryRegionNV where
  rawOffset = #{offset VkDecompressMemoryRegionNV, srcAddress}

instance Offset "dstAddress" VkDecompressMemoryRegionNV where
  rawOffset = #{offset VkDecompressMemoryRegionNV, dstAddress}

instance Offset "compressedSize" VkDecompressMemoryRegionNV where
  rawOffset = #{offset VkDecompressMemoryRegionNV, compressedSize}

instance Offset "decompressedSize" VkDecompressMemoryRegionNV where
  rawOffset = #{offset VkDecompressMemoryRegionNV, decompressedSize}

instance Offset "decompressionMethod" VkDecompressMemoryRegionNV where
  rawOffset = #{offset VkDecompressMemoryRegionNV, decompressionMethod}

#else

module Vulkan.Types.Struct.VkDecompressMemoryRegionNV where

#endif