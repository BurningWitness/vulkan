{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageMemoryBarrier where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresourceRange



data {-# CTYPE "vulkan/vulkan.h" "VkImageMemoryBarrier" #-} VkImageMemoryBarrier =
       VkImageMemoryBarrier
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcAccessMask :: VkAccessFlags -- ^ Memory accesses from the source of the dependency to synchronize
         , dstAccessMask :: VkAccessFlags -- ^ Memory accesses from the destination of the dependency to synchronize
         , oldLayout :: VkImageLayout -- ^ Current layout of the image
         , newLayout :: VkImageLayout -- ^ New layout to transition the image to
         , srcQueueFamilyIndex :: #{type uint32_t} -- ^ Queue family to transition ownership from
         , dstQueueFamilyIndex :: #{type uint32_t} -- ^ Queue family to transition ownership to
         , image :: VkImage -- ^ Image to sync
         , subresourceRange :: VkImageSubresourceRange -- ^ Subresource range to sync
         }

instance Storable VkImageMemoryBarrier where
  sizeOf    _ = #{size      VkImageMemoryBarrier}
  alignment _ = #{alignment VkImageMemoryBarrier}

  peek ptr = 
    VkImageMemoryBarrier
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"oldLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"newLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcQueueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstQueueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"image" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subresourceRange" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"oldLayout" ptr val
    pokeField @"newLayout" ptr val
    pokeField @"srcQueueFamilyIndex" ptr val
    pokeField @"dstQueueFamilyIndex" ptr val
    pokeField @"image" ptr val
    pokeField @"subresourceRange" ptr val

instance Offset "sType" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, sType}

instance Offset "pNext" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, pNext}

instance Offset "srcAccessMask" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, srcAccessMask}

instance Offset "dstAccessMask" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, dstAccessMask}

instance Offset "oldLayout" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, oldLayout}

instance Offset "newLayout" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, newLayout}

instance Offset "srcQueueFamilyIndex" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, dstQueueFamilyIndex}

instance Offset "image" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, image}

instance Offset "subresourceRange" VkImageMemoryBarrier where
  rawOffset = #{offset VkImageMemoryBarrier, subresourceRange}