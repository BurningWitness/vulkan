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

module Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2 where

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



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageFormatInfo2" #-} VkPhysicalDeviceImageFormatInfo2 =
       VkPhysicalDeviceImageFormatInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , type_ :: VkImageType
         , tiling :: VkImageTiling
         , usage :: VkImageUsageFlags
         , flags :: VkImageCreateFlags
         }

instance Storable VkPhysicalDeviceImageFormatInfo2 where
  sizeOf    _ = #{size      VkPhysicalDeviceImageFormatInfo2}
  alignment _ = #{alignment VkPhysicalDeviceImageFormatInfo2}

  peek ptr = 
    VkPhysicalDeviceImageFormatInfo2
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

instance Offset "sType" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, sType}

instance Offset "pNext" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, pNext}

instance Offset "format" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, format}

instance Offset "type_" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, type}

instance Offset "tiling" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, tiling}

instance Offset "usage" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, usage}

instance Offset "flags" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = #{offset VkPhysicalDeviceImageFormatInfo2, flags}

instance Offset "type" VkPhysicalDeviceImageFormatInfo2 where
  rawOffset = rawOffset @"type_" @VkPhysicalDeviceImageFormatInfo2

instance HasField "type" VkPhysicalDeviceImageFormatInfo2 VkImageType where
  getField = getField @"type_" @VkPhysicalDeviceImageFormatInfo2

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2 where

#endif