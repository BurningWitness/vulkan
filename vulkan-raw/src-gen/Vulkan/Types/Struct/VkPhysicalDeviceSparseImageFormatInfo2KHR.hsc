{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2KHR where

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



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSparseImageFormatInfo2KHR" #-} VkPhysicalDeviceSparseImageFormatInfo2KHR =
       VkPhysicalDeviceSparseImageFormatInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , type_ :: VkImageType
         , samples :: VkSampleCountFlagBits
         , usage :: VkImageUsageFlags
         , tiling :: VkImageTiling
         }

instance Storable VkPhysicalDeviceSparseImageFormatInfo2KHR where
  sizeOf    _ = #{size      VkPhysicalDeviceSparseImageFormatInfo2KHR}
  alignment _ = #{alignment VkPhysicalDeviceSparseImageFormatInfo2KHR}

  peek ptr = 
    VkPhysicalDeviceSparseImageFormatInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tiling" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val
    pokeField @"type" ptr val
    pokeField @"samples" ptr val
    pokeField @"usage" ptr val
    pokeField @"tiling" ptr val

instance Offset "sType" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, sType}

instance Offset "pNext" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, pNext}

instance Offset "format" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, format}

instance Offset "type_" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, type}

instance Offset "samples" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, samples}

instance Offset "usage" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, usage}

instance Offset "tiling" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSparseImageFormatInfo2KHR, tiling}

instance Offset "type" VkPhysicalDeviceSparseImageFormatInfo2KHR where
  rawOffset = rawOffset @"type_" @VkPhysicalDeviceSparseImageFormatInfo2KHR

instance HasField "type" VkPhysicalDeviceSparseImageFormatInfo2KHR VkImageType where
  getField = getField @"type_" @VkPhysicalDeviceSparseImageFormatInfo2KHR

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2KHR where

#endif