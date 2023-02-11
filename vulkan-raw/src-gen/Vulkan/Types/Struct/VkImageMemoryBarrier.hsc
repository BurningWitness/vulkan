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
  sizeOf    _ = #{size      struct VkImageMemoryBarrier}
  alignment _ = #{alignment struct VkImageMemoryBarrier}

  peek ptr = 
    VkImageMemoryBarrier
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)
       <*> peek (offset @"oldLayout" ptr)
       <*> peek (offset @"newLayout" ptr)
       <*> peek (offset @"srcQueueFamilyIndex" ptr)
       <*> peek (offset @"dstQueueFamilyIndex" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"subresourceRange" ptr)

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
  rawOffset = #{offset struct VkImageMemoryBarrier, sType}

instance Offset "pNext" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, pNext}

instance Offset "srcAccessMask" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, srcAccessMask}

instance Offset "dstAccessMask" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, dstAccessMask}

instance Offset "oldLayout" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, oldLayout}

instance Offset "newLayout" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, newLayout}

instance Offset "srcQueueFamilyIndex" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, dstQueueFamilyIndex}

instance Offset "image" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, image}

instance Offset "subresourceRange" VkImageMemoryBarrier where
  rawOffset = #{offset struct VkImageMemoryBarrier, subresourceRange}