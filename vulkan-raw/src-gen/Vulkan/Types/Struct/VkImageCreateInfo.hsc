{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkSharingMode
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageCreateInfo" #-} VkImageCreateInfo =
       VkImageCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkImageCreateFlags -- ^ Image creation flags
         , imageType :: VkImageType
         , format :: VkFormat
         , extent :: VkExtent3D
         , mipLevels :: #{type uint32_t}
         , arrayLayers :: #{type uint32_t}
         , samples :: VkSampleCountFlagBits
         , tiling :: VkImageTiling
         , usage :: VkImageUsageFlags -- ^ Image usage flags
         , sharingMode :: VkSharingMode -- ^ Cross-queue-family sharing mode
         , queueFamilyIndexCount :: #{type uint32_t} -- ^ Number of queue families to share across
         , pQueueFamilyIndices :: Ptr #{type uint32_t} -- ^ Array of queue family indices to share across
         , initialLayout :: VkImageLayout -- ^ Initial image layout for all subresources
         }

instance Storable VkImageCreateInfo where
  sizeOf    _ = #{size      VkImageCreateInfo}
  alignment _ = #{alignment VkImageCreateInfo}

  peek ptr = 
    VkImageCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mipLevels" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"arrayLayers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tiling" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sharingMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pQueueFamilyIndices" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"imageType" ptr val
    pokeField @"format" ptr val
    pokeField @"extent" ptr val
    pokeField @"mipLevels" ptr val
    pokeField @"arrayLayers" ptr val
    pokeField @"samples" ptr val
    pokeField @"tiling" ptr val
    pokeField @"usage" ptr val
    pokeField @"sharingMode" ptr val
    pokeField @"queueFamilyIndexCount" ptr val
    pokeField @"pQueueFamilyIndices" ptr val
    pokeField @"initialLayout" ptr val

instance Offset "sType" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, sType}

instance Offset "pNext" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, pNext}

instance Offset "flags" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, flags}

instance Offset "imageType" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, imageType}

instance Offset "format" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, format}

instance Offset "extent" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, extent}

instance Offset "mipLevels" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, mipLevels}

instance Offset "arrayLayers" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, arrayLayers}

instance Offset "samples" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, samples}

instance Offset "tiling" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, tiling}

instance Offset "usage" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, usage}

instance Offset "sharingMode" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, sharingMode}

instance Offset "queueFamilyIndexCount" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, queueFamilyIndexCount}

instance Offset "pQueueFamilyIndices" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, pQueueFamilyIndices}

instance Offset "initialLayout" VkImageCreateInfo where
  rawOffset = #{offset VkImageCreateInfo, initialLayout}