{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkImageMemoryBarrier2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags2
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresourceRange



data {-# CTYPE "vulkan/vulkan.h" "VkImageMemoryBarrier2KHR" #-} VkImageMemoryBarrier2KHR =
       VkImageMemoryBarrier2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcStageMask :: VkPipelineStageFlags2
         , srcAccessMask :: VkAccessFlags2
         , dstStageMask :: VkPipelineStageFlags2
         , dstAccessMask :: VkAccessFlags2
         , oldLayout :: VkImageLayout
         , newLayout :: VkImageLayout
         , srcQueueFamilyIndex :: #{type uint32_t}
         , dstQueueFamilyIndex :: #{type uint32_t}
         , image :: VkImage
         , subresourceRange :: VkImageSubresourceRange
         }

instance Storable VkImageMemoryBarrier2KHR where
  sizeOf    _ = #{size      VkImageMemoryBarrier2KHR}
  alignment _ = #{alignment VkImageMemoryBarrier2KHR}

  peek ptr = 
    VkImageMemoryBarrier2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstStageMask" ptr)
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
    pokeField @"srcStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"oldLayout" ptr val
    pokeField @"newLayout" ptr val
    pokeField @"srcQueueFamilyIndex" ptr val
    pokeField @"dstQueueFamilyIndex" ptr val
    pokeField @"image" ptr val
    pokeField @"subresourceRange" ptr val

instance Offset "sType" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, sType}

instance Offset "pNext" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, pNext}

instance Offset "srcStageMask" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, srcStageMask}

instance Offset "srcAccessMask" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, srcAccessMask}

instance Offset "dstStageMask" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, dstStageMask}

instance Offset "dstAccessMask" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, dstAccessMask}

instance Offset "oldLayout" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, oldLayout}

instance Offset "newLayout" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, newLayout}

instance Offset "srcQueueFamilyIndex" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, dstQueueFamilyIndex}

instance Offset "image" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, image}

instance Offset "subresourceRange" VkImageMemoryBarrier2KHR where
  rawOffset = #{offset VkImageMemoryBarrier2KHR, subresourceRange}

#else

module Vulkan.Types.Struct.VkImageMemoryBarrier2KHR where

#endif