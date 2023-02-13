{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSparseImageFormatInfo2" #-} VkPhysicalDeviceSparseImageFormatInfo2 =
       VkPhysicalDeviceSparseImageFormatInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , type_ :: VkImageType
         , samples :: VkSampleCountFlagBits
         , usage :: VkImageUsageFlags
         , tiling :: VkImageTiling
         }

instance Storable VkPhysicalDeviceSparseImageFormatInfo2 where
  sizeOf    _ = #{size      VkPhysicalDeviceSparseImageFormatInfo2}
  alignment _ = #{alignment VkPhysicalDeviceSparseImageFormatInfo2}

  peek ptr = 
    VkPhysicalDeviceSparseImageFormatInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"samples" ptr)
       <*> peek (offset @"usage" ptr)
       <*> peek (offset @"tiling" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val
    pokeField @"type" ptr val
    pokeField @"samples" ptr val
    pokeField @"usage" ptr val
    pokeField @"tiling" ptr val

instance Offset "sType" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, sType}

instance Offset "pNext" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, pNext}

instance Offset "format" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, format}

instance Offset "type_" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, type}

instance Offset "samples" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, samples}

instance Offset "usage" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, usage}

instance Offset "tiling" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2, tiling}

instance Offset "type" VkPhysicalDeviceSparseImageFormatInfo2 where
  rawOffset = rawOffset @"type_" @VkPhysicalDeviceSparseImageFormatInfo2

instance HasField "type" VkPhysicalDeviceSparseImageFormatInfo2 VkImageType where
  getField = getField @"type_" @VkPhysicalDeviceSparseImageFormatInfo2

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2 where

#endif