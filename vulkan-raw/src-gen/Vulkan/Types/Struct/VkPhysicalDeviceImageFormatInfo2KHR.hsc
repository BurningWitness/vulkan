{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageFormatInfo2KHR" #-} VkPhysicalDeviceImageFormatInfo2KHR =
       VkPhysicalDeviceImageFormatInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , type_ :: VkImageType
         , tiling :: VkImageTiling
         , usage :: VkImageUsageFlags
         , flags :: VkImageCreateFlags
         }

instance Storable VkPhysicalDeviceImageFormatInfo2KHR where
  sizeOf    _ = #{size      VkPhysicalDeviceImageFormatInfo2KHR}
  alignment _ = #{alignment VkPhysicalDeviceImageFormatInfo2KHR}

  peek ptr = 
    VkPhysicalDeviceImageFormatInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tiling" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val
    pokeField @"type" ptr val
    pokeField @"tiling" ptr val
    pokeField @"usage" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, sType}

instance Offset "pNext" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, pNext}

instance Offset "format" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, format}

instance Offset "type_" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, type}

instance Offset "tiling" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, tiling}

instance Offset "usage" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, usage}

instance Offset "flags" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2KHR, flags}

instance Offset "type" VkPhysicalDeviceImageFormatInfo2KHR where
  rawOffset = rawOffset @"type_" @VkPhysicalDeviceImageFormatInfo2KHR

instance HasField "type" VkPhysicalDeviceImageFormatInfo2KHR VkImageType where
  getField = getField @"type_" @VkPhysicalDeviceImageFormatInfo2KHR

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2KHR where

#endif