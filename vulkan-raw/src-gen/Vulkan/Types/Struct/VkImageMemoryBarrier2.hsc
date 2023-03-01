{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkImageMemoryBarrier2 where

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



data {-# CTYPE "vulkan/vulkan.h" "VkImageMemoryBarrier2" #-} VkImageMemoryBarrier2 =
       VkImageMemoryBarrier2
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

instance Storable VkImageMemoryBarrier2 where
  sizeOf    _ = #{size      VkImageMemoryBarrier2}
  alignment _ = #{alignment VkImageMemoryBarrier2}

  peek ptr = 
    VkImageMemoryBarrier2
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

instance Offset "sType" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, sType}

instance Offset "pNext" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, pNext}

instance Offset "srcStageMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, srcStageMask}

instance Offset "srcAccessMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, srcAccessMask}

instance Offset "dstStageMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, dstStageMask}

instance Offset "dstAccessMask" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, dstAccessMask}

instance Offset "oldLayout" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, oldLayout}

instance Offset "newLayout" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, newLayout}

instance Offset "srcQueueFamilyIndex" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, dstQueueFamilyIndex}

instance Offset "image" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, image}

instance Offset "subresourceRange" VkImageMemoryBarrier2 where
  rawOffset = #{offset VkImageMemoryBarrier2, subresourceRange}

#else

module Vulkan.Types.Struct.VkImageMemoryBarrier2 where

#endif