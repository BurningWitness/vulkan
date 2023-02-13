{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageFormatProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSampleCountFlags
import Vulkan.Types.Struct.VkExtent3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageFormatProperties" #-} VkImageFormatProperties =
       VkImageFormatProperties
         { maxExtent :: VkExtent3D -- ^ max image dimensions for this resource type
         , maxMipLevels :: #{type uint32_t} -- ^ max number of mipmap levels for this resource type
         , maxArrayLayers :: #{type uint32_t} -- ^ max array size for this resource type
         , sampleCounts :: VkSampleCountFlags -- ^ supported sample counts for this resource type
         , maxResourceSize :: VkDeviceSize -- ^ max size (in bytes) of this resource type
         }

instance Storable VkImageFormatProperties where
  sizeOf    _ = #{size      VkImageFormatProperties}
  alignment _ = #{alignment VkImageFormatProperties}

  peek ptr = 
    VkImageFormatProperties
       <$> peek (Foreign.Storable.Offset.offset @"maxExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMipLevels" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxArrayLayers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sampleCounts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxResourceSize" ptr)

  poke ptr val = do
    pokeField @"maxExtent" ptr val
    pokeField @"maxMipLevels" ptr val
    pokeField @"maxArrayLayers" ptr val
    pokeField @"sampleCounts" ptr val
    pokeField @"maxResourceSize" ptr val

instance Offset "maxExtent" VkImageFormatProperties where
  rawOffset = #{offset VkImageFormatProperties, maxExtent}

instance Offset "maxMipLevels" VkImageFormatProperties where
  rawOffset = #{offset VkImageFormatProperties, maxMipLevels}

instance Offset "maxArrayLayers" VkImageFormatProperties where
  rawOffset = #{offset VkImageFormatProperties, maxArrayLayers}

instance Offset "sampleCounts" VkImageFormatProperties where
  rawOffset = #{offset VkImageFormatProperties, sampleCounts}

instance Offset "maxResourceSize" VkImageFormatProperties where
  rawOffset = #{offset VkImageFormatProperties, maxResourceSize}